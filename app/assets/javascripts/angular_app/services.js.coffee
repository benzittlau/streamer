angular.module("streamer", ["firebase"])

#angular.module("washroomServices", ["ngResource"]).factory "Washrooms", ($resource) ->
#  $resource "/washrooms.json", {},
#    query:
#      method: "GET"
#      isArray: true
