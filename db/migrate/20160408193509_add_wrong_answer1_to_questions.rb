class AddWrongAnswer1ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :wrong_answer1, :string
  end
end
