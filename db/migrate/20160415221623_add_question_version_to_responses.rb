class AddQuestionVersionToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :question_version, :string
  end
end
