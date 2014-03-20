class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.integer :type_player
      t.integer :ball_manipulation
      t.integer :dribbling
      t.boolean :injury
      t.integer :pass
      t.integer :positioning
      t.integer :speed
      t.integer :steals
      t.integer :trickery

      t.timestamps
    end
  end
end
