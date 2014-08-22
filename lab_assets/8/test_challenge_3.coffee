app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  tests:
    [
        name: "H1 element has content 'Recent Activity' with no additional spaces"
        fn: ->
          $.trim($('BODY>H1').html()) == "Recent Activity"
      ,
        name: "P element has content 'List f contacts below.' with no additional spaces"
        fn: ->
          $.trim($('BODY>P').html()) == "List of contacts below"
      ,
        name: "The BODY has two H3 child elements"
        fn: ->
          $('BODY>H3').length == 2
      ,
        name: "The content 'John Doe' is contained within the first H3 element"
        fn: ->
          $.trim($($('BODY>h3')[0]).html()) == "John Doe"
      ,
        name: "The content 'Mary Smith' is contained within the second H3 element"
        fn: ->
          $.trim($($('BODY>h3')[1]).html()) == "Mary Smith"


    ]


  run: ->
    console.log("RUNNING TESTS")

