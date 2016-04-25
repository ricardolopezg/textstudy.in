class AddShortDescriptionToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :short_description, :text
  end
end
