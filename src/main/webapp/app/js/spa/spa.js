/**
 * 
 */
(function() {

	'use strict';
	angular.module("myApp", []).controller('TravelHomeController', TravelHomeController);
	TravelHomeController.$inject = ['$http', '$window'];

	function TravelHomeController ($http, $window) {
		$window.alert("Hi");
	}

})();


