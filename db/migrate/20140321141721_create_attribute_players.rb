class CreateAttributePlayers < ActiveRecord::Migration
  def change
    create_table :attribute_players do |t|
      t.integer :attribute_id
      t.integer :player_id
      t.integer :value

      t.timestamps
    end
  end
end
