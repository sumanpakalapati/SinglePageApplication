/**
 * 
 */
angular.module("TripInfoControllers", ['TripsFilter'])
.controller("TripsController", ['$http', '$window','TripsFilter', function($http, $window,TripsFilter) {
	
	var testCtrl = this;
	testCtrl.trips = [];
	testCtrl.today = new Date();
	
	var req = {
			method : 'GET',
	 		url :'/SinglePageApplication/trips'
	}
	$http(req).success(function(data, status, headers, config) {
			testCtrl.trips = data;
	}).error(function(data, status, headers, config) {
			testCtrl.responseTxt  = status;
		
	});
	
}]);