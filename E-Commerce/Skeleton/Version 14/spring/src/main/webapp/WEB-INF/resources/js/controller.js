var myapp = angular.module("myapp", []).controller(
		"bookController",
		function($scope, $http) {

			$scope.getAllBooks = function() {

				$http.get('http://localhost:9090/spring/getBooksList').success(
						function(data) {
							$scope.books = data;
						})

			}

			$scope.addToCart = function(isbn) {
				$http.put('http://localhost:9090/spring/cart/add/' + isbn)
						.success(function() {
							alert('Book Added Successfully');
						})
			}
			$scope.refreshCart = function() {
				$http.get(
						'http://localhost:9090/spring/cart/getCart/'
								+ $scope.cartId).success(function(data) {
					$scope.cart = data;
				})
			}
			$scope.getCart = function(cartId) {
				$scope.cartId = cartId;
				$scope.refreshCart(cartId);
			}

			$scope.removeFromCart = function(cartItemId) {
				$http.put(
						'http://localhost:9090/spring/cart/removecartitem/'
								+ cartItemId).success(function() {
					$scope.refreshCart();
				})
			}

			$scope.clearCart = function() {
				$http.put(
						'http://localhost:9090/spring/cart/removeAllItems/'
								+ $scope.cartId).success(function() {
					$scope.refreshCart();
				});
			}

			$scope.calculateGrandTotal = function() {
				var grandTotal = 0.0
				for (var i = 0; i < $scope.Cart.cartItem.length; i++)
					grandTotal = grandTotal
							+ $scope.Cart.cartItems[i].totalPrice;
				return grandTotal;
			}

		});