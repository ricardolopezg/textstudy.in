class AddResponseToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :response, :string
  end
end
