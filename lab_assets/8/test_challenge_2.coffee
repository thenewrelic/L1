app = angular.module('htmlIframe')
app.service 'StepTests', ($rootElement) ->
  tests:
    [
        name: "Body contains P child element"
        fn: ->
          $('body>p').length > 0
      ,
        name: "Paragraph contains a B child element"
        fn: ->
          $('body>p>b').length > 0
      ,
        name: "B element contains the content 'contacts'"
        fn: ->
          $('body>p>b').html() == "contacts"
      ,
        name: "Body has an h3 element"
        fn: ->
          $('body>h3').length > 0
      ,
        name: "H3 element is the third child of body"
        fn: ->
          $('body').children()[2].tagName == "H3"
      ,
        name: "H3 element contains an I element "
        fn: ->
          $('body>h3>i').length > 0
      ,
        name:
          "I element contains the content 'John Doe'"
        fn: ->
          $('body>h3>i').html() == "John Doe"




    ]


  run: ->
    console.log("RUNNING TESTS")

