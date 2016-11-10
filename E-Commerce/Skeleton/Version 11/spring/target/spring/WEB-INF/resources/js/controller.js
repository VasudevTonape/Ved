var myapp = angular
		.module("myapp", [])
		.controller(
				"bookController",
				function($scope, $http) {

					$scope.getBookList = function() {
						$http
								.get(
										'http://localhost:8080/welcomehelloworld/getallbooks')
								.success(function(data) {
									$scope.books = data;
								});
					};
				});
