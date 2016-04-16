class ChangeResponseToUserResponse < ActiveRecord::Migration
  def change
    rename_column :responses, :response, :user_response
  end
end
