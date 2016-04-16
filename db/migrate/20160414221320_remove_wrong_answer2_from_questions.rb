class RemoveWrongAnswer2FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :wrong_answer2, :string
  end
end
