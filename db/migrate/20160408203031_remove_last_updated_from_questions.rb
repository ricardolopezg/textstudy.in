class RemoveLastUpdatedFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :last_updated, :datetime
  end
end
