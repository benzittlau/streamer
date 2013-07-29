@WashroomCtrl = ($scope, $timeout, Washrooms) ->
  $scope.washrooms = []

  (update = ->
    washroom_update = Washrooms.query(->
      $scope.washrooms = washroom_update
      $timeout update, 1000
    )


    )()
