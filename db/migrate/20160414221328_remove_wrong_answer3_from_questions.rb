class RemoveWrongAnswer3FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :wrong_answer3, :string
  end
end
