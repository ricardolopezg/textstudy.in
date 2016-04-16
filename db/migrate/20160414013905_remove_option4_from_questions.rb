class RemoveOption4FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :option4, :string
  end
end
