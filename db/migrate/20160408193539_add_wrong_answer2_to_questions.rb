class AddWrongAnswer2ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :wrong_answer2, :string
  end
end
