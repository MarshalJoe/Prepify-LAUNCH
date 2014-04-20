class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :lesson
  has_many :results


  def as_json(options={})
    {
      id: self.id,
      lesson_id: self.lesson_id,
      level: self.level,
      equation: self.equation,
      description: self.description,
      answers: self.answers.each do |answer|
        { id: answer.id,
          value: answer.value,
          correct: answer.correct,
          explanation: answer.explaination
        }
      end 
    }
  end
end
