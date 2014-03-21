class RemovePlayersAttributes < ActiveRecord::Migration
  def change
    remove_column :players, :ball_manipulation, :integer
    remove_column :players, :dribbling, :integer
    remove_column :players, :pass, :integer
    remove_column :players, :positioning, :integer
    remove_column :players, :speed, :integer
    remove_column :players, :steals, :integer
    remove_column :players, :trickery, :integer
  end
end
