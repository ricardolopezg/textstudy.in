class CreateSendTexts < ActiveRecord::Migration
  def change
    create_table :send_texts do |t|

      t.timestamps null: false
    end
  end
end
