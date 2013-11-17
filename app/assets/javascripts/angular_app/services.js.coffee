angular.module("streamer", ["washroomServices"])

angular.module("washroomServices", ["ngResource"]).factory "Washrooms", ($resource) ->
  $resource "/washrooms.json", {},
    query:
      method: "GET"
      isArray: true
