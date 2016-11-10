var myapp = angular.module("myapp", []).controller(
		"bookController",
		function($scope, $http) {

			// To getallbooks
			$scope.getAllBooks = function() {

				$http.get('http://localhost:9090/spring/getBooksList').success(
						function(data) {
							$scope.books = data;
						})

			}

			// to add a book to the cart
			$scope.addToCart = function(isbn) {
				$http.put('http://localhost:9090/spring/cart/add/' + isbn)
						.success(function() {
							alert('Book Added Successfully');
						})
			}

			// to refresh the cart
			$scope.refreshCart = function() {
				$http.get(
						'http://localhost:9090/spring/cart/getCart/'
								+ $scope.cartId).success(function(data) {
					$scope.cart = data;
				})
			}

			// to get the cart
			$scope.getCart = function(cartId) {
				alert("entering the get cart");
				$scope.cartId = cartId;
				$scope.refreshCart(cartId);
			}

			// to remove a book from the cart
			$scope.removeFromCart = function(cartItemId) {
				$http.put(
						'http://localhost:9090/spring/cart/removecartitem/'
								+ cartItemId).success(function() {
					$scope.refreshCart();
				})
			}

			// to clear the cart
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