class AddLanguageToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :language, :string
  end
end
