//
// Change underscore template interprolation syntax from <%= %> to {{ }}
// This is needed to avoid erb's interprolation syntax
_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};



window.Prepify = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    insertQuestion(1, false)
  }
};

$(document).ready(function(){
  Prepify.initialize();
});

