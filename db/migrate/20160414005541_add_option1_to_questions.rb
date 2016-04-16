class AddOption1ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :option1, :string
  end
end
