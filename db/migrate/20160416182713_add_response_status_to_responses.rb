class AddResponseStatusToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :response_status, :string
  end
end
