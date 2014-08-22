app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  tests:
    [
        name: "Document has a BODY tag"
        fn: ->
          $('BODY').length > 0
      ,
        name: "Document has a HEAD tag"
        fn: ->
          $('HEAD').length > 0
      ,
        name: "Body has at least one H3 tag"
        fn: ->
          $('body>h3').length > 0

    ]


  run: ->
    console.log("RUNNING TESTS")

