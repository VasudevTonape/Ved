var myapp = angular.module("myapp", []).controller(
		"bookController",
		function($scope, $http) {

			$scope.getAllBooks = function() {
				$http.get(
						'http://localhost:9090/spring/getallbooks')
						.success(function(data) {
							$scope.books = data;
						})
			}

			$scope.addToCart = function(isbn) {
				$http.put(
						'http://localhost:8080/welcomehelloworld/cart/add/'
								+ isbn).success(function() {
					alert('Book Added Successfully');
				})
			}

		});
