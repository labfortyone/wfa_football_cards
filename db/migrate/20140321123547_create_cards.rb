class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :type_player
      t.integer :attribute_enhanced
      t.integer :qtd_enhanced
      t.string :description
      t.string :code
      t.string :rarity
      t.boolean :unique_use
      t.integer :coach_lvl_required

      t.timestamps
    end
  end
end
