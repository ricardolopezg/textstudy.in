class RemoveQuestionVersionFromResponses < ActiveRecord::Migration
  def change
    remove_column :responses, :question_version, :integer
  end
end
