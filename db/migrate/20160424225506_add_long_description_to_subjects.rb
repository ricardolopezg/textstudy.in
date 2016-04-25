class AddLongDescriptionToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :long_description, :text
  end
end
