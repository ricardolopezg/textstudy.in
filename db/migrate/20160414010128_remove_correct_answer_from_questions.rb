class RemoveCorrectAnswerFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :correct_answer, :string
  end
end
