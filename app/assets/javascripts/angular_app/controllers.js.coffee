@WashroomCtrl = ($scope, Washrooms) ->
  $scope.washrooms = Washrooms.query()

  $scope.test = 'hi'
