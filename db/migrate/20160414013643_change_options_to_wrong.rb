class ChangeOptionsToWrong < ActiveRecord::Migration
  def change
    rename_column :questions, :option1, :wrong_answer1
    rename_column :questions, :option2, :wrong_answer2
    rename_column :questions, :option3, :wrong_answer3
  end
end
