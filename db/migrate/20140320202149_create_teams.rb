class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :user_id
      t.string :team_name
      t.string :coach_name
      t.string :age

      t.timestamps
    end
  end
end
