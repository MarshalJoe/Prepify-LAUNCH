class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :user, index: true
      t.references :question, index: true
      t.references :answer, index: true
      t.boolean :correct
      t.time :duration

      t.timestamps
    end
  end
end
