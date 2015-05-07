/**
 * 
 */
(function() {

	'use strict';
	angular.module("myApp", []).controller('TravelHomeController', TravelHomeController);
	angular.module("myApp").factory('AppConfigService', AppConfigService);
	angular.module("myApp").controller('LoadConfigurationController', LoadConfigurationController);
	
	TravelHomeController.$inject = ['$http', '$window','AppConfigService'];
	LoadConfigurationController.$inject = ['$window','AppConfigService'];

	function TravelHomeController ($http, $window, AppConfigService) {
		$window.alert(AppConfigService.fullName());
		AppConfigService.setFirstName('Gita');
		$window.alert(AppConfigService.fullName());
	}
	
	function AppConfigService() {
		var conf = {
			firstName : 'Ram',
			lastName : 'Mittala',
			fullName : function() {
				return this.firstName +"" + this.lastName;
			},
			setFirstName: function(firstName) {
				this.firstName = firstName;
			}
		  
		};
	    return conf;
	};
	
	function LoadConfigurationController($window, AppConfigService) {
		var tempThis = this;
		$window.alert(tempThis.userId);
		
	};

})();