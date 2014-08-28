homeCtrl = adminApp.controller('HomeCtrl', ['$scope', function($scope) {
  $scope.title = 'Admin Interface';
}]);

catCtrl = adminApp.controller('CategoryCtrl', ['$scope', function($scope) {
  $scope.title = 'Categories';
}]);

pageCtrl = adminApp.controller('PageCtrl', ['$scope', function($scope) {
  $scope.title = 'Pages';
}]);

vendorCtrl = adminApp.controller('VendorCtrl', ['$scope', function($scope) {
  $scope.title = 'Vendors';
}])

memberCtrl = adminApp.controller('MemberCtrl', ['$scope', function($scope) {
  $scope.title = 'Membors';
}])

