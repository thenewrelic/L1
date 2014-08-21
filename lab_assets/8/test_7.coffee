app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  tests:
    [
        name: "Has BODY"
        fn: ->
          $('BODY').length > 0
      ,
        name: "Has HEAD"
        fn: ->
          $('HEAD').length > 0

    ]


  run: ->
    console.log("RUNNING TESTS")

