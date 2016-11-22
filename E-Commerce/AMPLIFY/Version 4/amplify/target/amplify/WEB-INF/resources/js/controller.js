var myapp = angular.module("myapp", []).controller(
		"productController",
		function($scope, $http) {

			// To get all products
			$scope.getAllProducts = function() {
				alert("welcome to product page");
				$http.get('http://localhost:9090/amplify/getProductsList')
						.success(function(data) {
							$scope.products = data;
						})
			}

			// to add a product to the cart
			$scope.addToCart = function(productId) {
				alert("add product");
				$http
						.put(
								'http://localhost:9090/amplify/cart/add/'
										+ productId).success(function() {

						})

			}

			// to refresh the cart
			$scope.refreshCart = function() {

				$http.get(
						'http://localhost:9090/amplify/cart/getCart/'
								+ $scope.cartId).success(function(data) {
					$scope.cart = data;
				})
			}

			// to get the cart
			$scope.getCart = function(cartId) {

				$scope.cartId = cartId;
				$scope.refreshCart(cartId);
			}

			// to remove a book from the cart
			$scope.removeFromCart = function(cartItemId) {
				$http.put(
						'http://localhost:9090/amplify/cart/removecartitem/'
								+ cartItemId).success(function() {
					$scope.refreshCart();
				})
			}

			// to clear the cart
			$scope.clearCart = function() {
				$http.put(
						'http://localhost:9090/amplify/cart/removeAllItems/'
								+ $scope.cartId).success(function() {
					$scope.refreshCart();
				});
			}

			// to calculate total price
			$scope.calculateGrandTotal = function() {

				var grandTotal = 0.0
				for (var i = 0; i < $scope.cart.cartItem.length; i++)
					grandTotal = grandTotal
							+ $scope.cart.cartItem[i].totalPrice;
				return grandTotal;
			}

		});