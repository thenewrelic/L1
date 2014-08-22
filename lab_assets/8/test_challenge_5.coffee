app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  tests:
    [
        name: "H1 has one class 'jumbotron'"
        fn: ->
          $('body>h1').prop('class') == 'jumbotron'
      ,
        name: "LI exists with an id of '31'"
        fn: ->
          $("li#31").length > 0
      ,
        name: "LI #31 has one class: 'recent-contact'"
        fn: ->
          $("li#31").prop('class') == 'recent-contact'
      ,
        name: "LI #31 has content 'Mary Smith'"
        fn: ->
          $.trim($('li#31').html()) == "Mary Smith"



    ]


  run: ->
    console.log("RUNNING TESTS")

