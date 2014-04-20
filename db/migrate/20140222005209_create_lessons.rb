class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :intro
      t.text :conclusion
      t.string :video_url

      t.timestamps
    end
  end
end
