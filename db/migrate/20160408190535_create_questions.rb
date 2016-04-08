class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :subject_id
      t.text :question
      t.string :answer
      t.datetime :last_updated
      t.string :version

      t.timestamps null: false
    end
  end
end
