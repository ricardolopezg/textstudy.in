class ChangeName < ActiveRecord::Migration
  def change
    rename_column :questions, :answer, :correct_answer
  end
end

