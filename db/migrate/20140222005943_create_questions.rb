class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :equation
      t.integer :level
      t.text :description

      t.timestamps
    end
  end
end
