app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  tests:
    [
        name: "has a BODY tag"
        fn: ->
          $('BODY').length > 0
      ,
        name: "has a HEAD tag"
        fn: ->
          $('HEAD').length > 0
      ,
        name: "has at least one H3 tag."
        fn: ->
          $('H3').length > 0

    ]


  run: ->
    console.log("RUNNING TESTS")

