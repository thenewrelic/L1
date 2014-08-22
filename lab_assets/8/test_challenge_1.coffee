app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  tests:
    [
        name: "document has a BODY tag"
        fn: ->
          $('BODY').length > 0
      ,
        name: "document has a HEAD tag"
        fn: ->
          $('HEAD').length > 0
      ,
        name: "document has a h1 tag"
        fn: ->
          $('body h1').length > 0
      ,
        name: "h1 tag has content 'My Solution'"
        fn: ->
          $('body h1').html() == "My Solution"



    ]


  run: ->
    console.log("RUNNING TESTS")

