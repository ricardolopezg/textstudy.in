class RemoveWrongAnswer1FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :wrong_answer1, :string
  end
end
