class RemoveCodeFromCards < ActiveRecord::Migration
  def change
    remove_column :cards, :code, :string
  end
end
