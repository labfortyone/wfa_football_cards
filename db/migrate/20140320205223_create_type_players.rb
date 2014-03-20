class CreateTypePlayers < ActiveRecord::Migration
  def change
    create_table :type_players do |t|
      t.string :name

      t.timestamps
    end
  end
end
