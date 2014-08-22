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
        name: "Body has a H1 tag"
        fn: ->
          $('body>h1').length > 0
      ,
        name: "H1 tag has content 'My Solution'"
        fn: ->
          $('body>h1').html() == "My Solution"



    ]


  run: ->
    console.log("RUNNING TESTS")

