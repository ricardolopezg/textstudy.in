class RemoveResponseFromResponses < ActiveRecord::Migration
  def change
    remove_column :responses, :response, :string
  end
end
