class CreateCodePlayers < ActiveRecord::Migration
  def change
    create_table :code_players do |t|
      t.integer :code_id
      t.integer :player_id

      t.timestamps
    end
    add_index :code_players, [:player_id, :code_id], unique: true
  end
end
