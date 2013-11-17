@WashroomCtrl = ($scope, $timeout, angularFire) ->
  $scope.washrooms = []

  firebaseUrl = $('body').data('firebaseUrl')
  ref = new Firebase firebaseUrl + 'washrooms'
  angularFire ref, $scope, "washrooms"

  #$scope.washrooms.push({name: 'Test', state: 'open', id: '1' })

  $scope.isOpen = (washroom) ->
    washroom.state == 'open'

WashroomCtrl.$inject = ['$scope', '$timeout', 'angularFire']

