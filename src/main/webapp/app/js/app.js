var app = angular.module("responsive.app", ['ngRoute']);

app.controller("HelloController", [ '$scope', '$http', '$window',
		function($scope, $http, $window) {

			$scope.currentDate = 'Null';
			var response = $http.get('/ResponsiveWeb/hello');
			response.success(function(data, status, headers, config) {
				$scope.currentDate = data.currentDateStr;

			}).error(function(data, status, headers, config) {

			});
		} ]);


app.factory("TestFactory", function() {
	
});

app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider){
	
	$routeProvider.when('/view1', {
		templateUrl:'/resources/html/view1.html',
		controller:'TestController',
		controllerAs:'testCtrl'
	})
	.when('view2', {
		templateUrl: '/resources/html/view2.html',
		controller:"TestController",
		controllerAs :"TestCtrl"
	})
	
	
}]);

app.controller('TestController', ['$route','$routeParams','$location', function($route,$routeParams, $location){
    this.$route = $route;
    this.name='TestController';
    this.$location = $location;
    this.$routeParams = $routeParams;
}]);
