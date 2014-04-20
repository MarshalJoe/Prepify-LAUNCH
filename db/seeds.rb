# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
# puts 'DEFAULT USERS'
# user = User.find_or_create_by_email :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
# puts 'user: ' << user.email

a = Lesson.create(name:"Algebra", intro: "Learn the basic and advanced algebra concepts on the
SAT and beat the test like a three-day old rug.", conclusion:"Subject matter includes: substitution, simplifying algebraic
expressions, properties of exponents, word problems, linear equations, inequalities, systems of equations, and more.")

g = Lesson.create(name:"Geometry", intro: "Learn foundational concepts in Geometry. If a trapezoid sounds like it belongs in a circus, this is for you.", conclusion:"Subject matter includes: the area and perimeter of a polygon, the area
and circumference of a circle, the Pythagorean Theorem, coordinate geometry, geometric visualization, and the special properties of isosceles, equilateral,
and right triangles. ")

t = Lesson.create(name: "Test Prep", intro: "Think tests are all No. 2 pencils and uncomfortable desks? Ah, but they're so much more! Enter here to learn the strategy and psychology behind trumping the SAT", conclusion: "As a timed exam, the SAT doesn't just test your math skills or ability to endure endless scantrons - it also tests your awareness of shortcuts and basic probabilistic reasoning ('I don't know this - should I answer it?'). And just what shortcuts, tactics, and decisions should you be employing? Watch and find out.")

q = Question.create(equation:"2x + 4 = 10", level: 1, description: "Solve for x")

one = Answer.create(value:"3", correct: true, explaination: "You got it!")
two = Answer.create(value:"4", correct: false, explaination: "You added it together, but I think yor're missing something")
three = Answer.create(value:"5", correct: false, explaination: "Nope, sorry")
four = Answer.create(value:"10", correct: false, explaination: "Nope, sorry")

Question.all.each do |q|
  q.lesson_id = a.id
  q.save
end

Answer.all.each do |a|
  a.question_id = q.id
  a.save
end