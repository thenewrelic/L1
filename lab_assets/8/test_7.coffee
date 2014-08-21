app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  run: ->
    console.log("RUNNING TESTS")
