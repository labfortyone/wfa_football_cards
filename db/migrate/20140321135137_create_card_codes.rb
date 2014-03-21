class CreateCardCodes < ActiveRecord::Migration
  def change
    create_table :card_codes do |t|
      t.integer :card_id
      t.string :code

      t.timestamps
    end
  end
end
