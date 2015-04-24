var app = angular.module("searchWidget", []);

app.config(function($httpProvider) {
	$httpProvider.defaults.transformRequest = function(data) {
		 if (data === undefined) {
			 return data;
		 } else {
			 return $.param(data)
		 }
	};
	
});

app.controller("PostParametersController", ['$http','$window', function($http, $window) {
	
		var testCtrl = this;
		testCtrl.responseTxt ='';
		testCtrl.showResponse = false;

		testCtrl.sendEmail = function() {
			var req = {
					method : 'POST',
			 		url :'http://localhost:8080/SinglePageApplication/hello',
			 		headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
   					data : {email : this.emailAddress}
			}
			$http(req).success(function(data, status, headers, config) {
					testCtrl.responseTxt = data.currentDateStr;
					testCtrl.showResponse = true;

			}).error(function(data, status, headers, config) {
					testCtrl.responseTxt  = status;
			});
		};

}]);