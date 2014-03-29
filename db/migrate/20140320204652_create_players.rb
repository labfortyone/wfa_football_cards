class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.integer :type_player
      t.boolean :injury

      t.timestamps
    end
  end
end
