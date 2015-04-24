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

app.controller("TestPostParams", ['$http','$window', function($http, $window) {


	this.sendEmail = function() {

		 var req = {
					 method : 'POST',
			 		 url :'http://localhost:8080/SinglePageApplication/hello',
			 		 headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
    				 data : {email : this.emailAddress}
			 }
			 $http(req).success(function(data, status, headers, config) {
					this.res = status;
					this.ram = status;

			 }).error(function(data, status, headers, config) {
					this.res = status;

			 });


	}

}]);