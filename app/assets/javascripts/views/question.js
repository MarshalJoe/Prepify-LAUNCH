Prepify.Views.Question = Backbone.View.extend({
  initialize: function (options) {
     current_answers = this.model.get('answers')
  },
  render: function () {
    var newQuestionHtml = questionTemplate(this.model.toJSON());
    // A view's el is a blank div (<div></div>) by default
    this.$el.html(newQuestionHtml);
    // this.delegateEvents(this.events);
    console.log('this.$el', this.$el);
  },

  events: {
    'click .answer_value' : 'onGuess',
    'click .show_reason'  : 'showReason',
    'click .button.false'  : 'collapseAnswer',
    'click .button.true'  : 'nextQuestion'
  },
  onGuess: function (e) {
    console.log('guessed_click')

    num_picked = $(e.currentTarget).index()
    answers = this.model.get('answers')

    ans_obj = answers[num_picked]

    if (ans_obj.correct) {
      button_text = "Next";
      exclamation = 'Correct'
    } else {
      button_text = "Try Again"
      exclamation = 'Whoops'
    }
    $(e.currentTarget).toggleClass('clicked')
    var newGuessHtml = guessTemplate({exclamation: exclamation, button_text:button_text, correctness: ans_obj.correct});

    if ($(e.currentTarget).children().is(':empty')) {
      $(e.currentTarget).children().html(newGuessHtml)
    }
  },
  showReason: function(e) {
    console.log("reason_clicked")
    $(e.currentTarget).text(ans_obj.explaination)
  },
  collapseAnswer: function(e) {
    console.log("try again")
    console.log($(e.currentTarget).parent().find('.opened'))
    $(e.currentTarget).parent().parent().find('.opened').remove()
  },
  nextQuestion: function(e) {
    console.log("next")
    (this.model)
    insertQuestion(1,ans_obj.correct)
  }
});


