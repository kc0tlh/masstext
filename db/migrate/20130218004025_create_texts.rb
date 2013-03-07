class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :phone_number
 	  t.text   :message
      t.timestamps
    end
  end
end
