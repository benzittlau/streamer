@WashroomCtrl = ($scope, $timeout, Washrooms) ->
  $scope.washrooms = []

  $scope.isOpen = (washroom) ->
    washroom.state == 'open'


  (update = ->
    washroom_update = Washrooms.query(->
      $scope.washrooms = washroom_update
      #$timeout update, 1000
    )
    )()

WashroomCtrl.$inject = ['$scope', '$timeout', 'Washrooms']

