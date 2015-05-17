
angular.module('myTrips', []).controller('tripsController', tripsController);
/*1528108699 */
tripsController.$inject = ['$scope', '$window', '$filter'];
function tripsController($scope, $window,$filter) {
	$scope.futurTrips = [ 
			{
				"startDate" : "2015-05-14T14:00:05",
				"endDate" : "2015-05-25T13:03:05",
				"startAirPortCode" : "SFO",
				"endAirPortCode":"LAX",
				"productCode":"AIR"

			}, {
				"startDate" : "2015-05-14T12:00:05",
				"endDate" : "2015-06-25T13:05:05",
				"startAirPortCode":"PHX",
				"endAirPortCode":"NYC",
				"hotelName" :"Bay Landing AirPort Hotel",
				"productCode":"HOTEL",
				 address : {
				 	"addressLine1" :"4750 E union HIlls dr",
				 	"city" : "phoenix",
				 	"state" : "Ariozna",
				 	"Country" :"USA"
				},
				"noRooms": "4",
				"noOfNights" : "4"
			}, {
				"startDate" : "2015-05-18T14:13:05",
				"endDate" : "2015-06-15T13:07:05",
				"startAirPortCode":"PHX",
				"endAirPortCode":"DHL",
				"productCode" :"CAR"
			}, {
				"startDate" : "2015-05-19T18:05:05",
				"endDate" : "2015-06-15T16:05:05",
				"startAirPortCode":"PHX",
				"endAirPortCode":"HYD",
				"productCode" :"HOTEL"
			}, {
				"startDate" : "2015-05-19T18:05:05",
				"endDate" : "2015-06-15T16:05:05",
				"startAirPortCode":"PHX",
				"endAirPortCode":"HYD",
				"productCode" :"CRUISE"
			}
	];

	$scope.futurTrips = $filter('orderBy')($scope.futurTrips, ["startDate | date:'MM/dd/yyyy'",	$scope.sortByLOB]);

	$scope.currentTrip = $scope.futurTrips[0];
	$scope.tripIndex = 0;
	$scope.noOfTrips = $scope.futurTrips.length;

	$scope.isPreviousTripAvailable =  false;
	$scope.isNextTripAvailable = $scope.noOfTrips > 1 ? true : false;


	$scope.changeLabel = function() {
		if ($scope.currentTrip.productCode == 'AIR') {
			$scope.label = 'DATE';
			$scope.showAirDetails = true;
			$scope.showHotelDetails = false;
			$scope.showCarDetails = false;
			$scope.showCruiseDetails = false;

		} else if ($scope.currentTrip.productCode == 'HOTEL') {
			$scope.label = 'CHECK-IN';
			$scope.showAirDetails = false;
			$scope.showHotelDetails = true;
			$scope.showCarDetails = false;
			$scope.showCruiseDetails = false;
		} else if ($scope.currentTrip.productCode == 'CAR') {
			$scope.label = 'PICK-UP';
			$scope.showAirDetails = false;
			$scope.showHotelDetails = false;
			$scope.showCarDetails = true;
			$scope.showCruiseDetails = false;
		} else if ($scope.currentTrip.productCode == 'CRUISE') {
			$scope.label = 'SAILING';
			$scope.showAirDetails = false;
			$scope.showHotelDetails = false;
			$scope.showCarDetails = false;
			$scope.showCruiseDetails = true;
		}
	}


	$scope.nextTrip  = function() {
			if ($scope.tripIndex < $scope.noOfTrips - 1) {
				$scope.tripIndex = $scope.tripIndex + 1;
				$scope.currentTrip = $scope.futurTrips[$scope.tripIndex];
				$scope.isPreviousTripAvailable = true;
				$scope.changeLabel();
			} 

			if ($scope.tripIndex == $scope.noOfTrips-1) {
				$scope.isNextTripAvailable = false;
			}
	};

	$scope.previousTrip  = function() {
			if ($scope.tripIndex > 0) {
				$scope.tripIndex = $scope.tripIndex - 1;
				$scope.currentTrip = $scope.futurTrips[$scope.tripIndex];
				$scope.isNextTripAvailable = true;
				$scope.changeLabel();
			} 

			if ($scope.tripIndex == 0 && $scope.noOfTrips > 1) {
				$scope.isNextTripAvailable = true;
				$scope.isPreviousTripAvailable = false;
			}
	};

	/* This is customer sort order*/
	$scope.sortByLOB = function(trip) {
		
			if (trip.productCode ==='AIR') {
				return 1;
			} else if (trip.productCode === 'HOTEL') {
				return 2;
			} else if (trip.productCode === 'CAR') {
				return 3;
			} else if (trip.productCode === 'CRUISE') {
				return 4;
			} else {
				return 5;
			}				
			
	};
	$scope.changeLabel();
};
