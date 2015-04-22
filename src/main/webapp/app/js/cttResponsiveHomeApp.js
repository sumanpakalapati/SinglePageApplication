'use strict';

var app = angular.module("ctt.responsive.home", []);

app.config(function($httpProvider) {
	$httpProvider.defaults.transformRequest = function(data) {
		 if (data === undefined) {
			 return data;
		 } else {
			 return $.param(data)
		 }
	};
	
});

app.controller("CheetaMailController", [ '$scope', '$http', '$window', function($scope, $http, $window) {
	
		$scope.isEmailSubmissionSucess = false;
		$scope.showEmailSignUpMessage  = true;
		var url = 'http://www.google.com';
		
		$scope.submitEmailSignup = function() {
			 $scope.showEmailSignUpMessage = false;
			 var req = {
					 method : 'POST',
			 		 url :'',
			 		 headers : {},
			 		 data : {email : $scope.emailAddress}
			 }
			 $http(req).success(function(data, status, headers, config) {
				    $scope.showEmailSignUpMessage = false;
				 	$scope.isEmailSubmissionSucess = true;

			 }).error(function(data, status, headers, config) {
				 $scope.isEmailSubmissionSucess = false;
			 });
		
		};
		
		$scope.closeSuccessMessage = function() {
			$scope.showEmailSignUpMessage = true;
		};
		
	}]);


		app.controller("TripControllerV2", [ '$scope', '$http', '$window',
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
