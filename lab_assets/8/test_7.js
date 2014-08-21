app = app.module('htmlIframe')
app.service('StepTests', function ($rootElement) {
    this.run = function (){
      console.log("RUNNING TESTS")
    }
}
