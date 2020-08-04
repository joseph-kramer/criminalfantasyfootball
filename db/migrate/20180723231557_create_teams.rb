class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :season
      t.string :name
      t.text :description
      t.date :doomsday #covid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
