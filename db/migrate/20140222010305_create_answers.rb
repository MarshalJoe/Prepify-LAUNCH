class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :value
      t.boolean :correct
      t.text :explaination

      t.timestamps
    end
  end
end
