class RemoveTimestampFromResponses < ActiveRecord::Migration
  def change
    remove_column :responses, :timestamp, :string
  end
end
