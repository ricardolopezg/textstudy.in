class AddWrongAnswer3ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :wrong_answer3, :string
  end
end
