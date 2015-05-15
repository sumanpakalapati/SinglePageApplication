var app = angular.module("searchWidget", []);

app.config(function($httpProvider) {

	//Reset headers to avoid OPTIONS request (aka preflight)
  $httpProvider.defaults.headers.common = {};
  $httpProvider.defaults.headers.post = {};
  $httpProvider.defaults.headers.put = {};
  $httpProvider.defaults.headers.patch = {};

	$httpProvider.defaults.transformRequest = function(data) {
		 if (data === undefined) {
			 return data;
		 } else {
			 return $.param(data)
		 }
	};
	
});

app.controller("TripsController", ['$http','$window', '$filter', function($http, $window, $filter) {
	
		var testCtrl = this;
		var orderBy = $filter('orderBy');

		testCtrl.trips = [];
		testCtrl.today = new Date();
		testCtrl.showTrip = 0;
		testCtrl.tripCount = 0;
		testCtrl.currentTrip = {};
		
		var req = {
				method : 'GET',
		 		url :'http://localhost:8080/SinglePageApplication/trips'
		}
		$http(req).success(function(data, status, headers, config) {
				testCtrl.trips = $filter('orderBy')(data.tripsInfos, ["startDate",	testCtrl.sortByLOB]);
				testCtrl.currentTrip = testCtrl.trips[0];
		
		}).error(function(data, status, headers, config) {
				testCtrl.responseTxt  = status;
			
		});
		/* This is customer sort order*/
		testCtrl.sortByLOB = function(trip) {
		
			if (trip.lineOfBusiness ==='AIR') {
				return 1;
			} else if (trip.lineOfBusiness === 'HOTEL') {
				return 2;
			} else if (trip.lineOfBusiness === 'CAR') {
				return 3;
			} else if (trip.lineOfBusiness === 'CRUISE') {
				return 4;
			} else if (trip.lineOfBusiness === 'PACKAGE') {
				return 5;
			} else {
				return 6;
			}				
			
		};
	


}]);

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