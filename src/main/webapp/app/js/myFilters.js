
angular.module("TripsFilter", []).filter('sortByLOB', function(){
	 
	return function(trip){

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
})