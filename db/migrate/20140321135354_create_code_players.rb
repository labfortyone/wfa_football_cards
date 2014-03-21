class CreateCodePlayers < ActiveRecord::Migration
  def change
    create_table :code_players do |t|
      t.integer :code_id
      t.integer :player_id

      t.timestamps
    end
  end
end
