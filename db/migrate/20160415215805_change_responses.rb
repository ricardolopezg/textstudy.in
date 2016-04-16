class ChangeResponses < ActiveRecord::Migration
  def change
    rename_column :responses, :questions_id, :question_id
    rename_column :responses, :version, :question_version
  end
end
