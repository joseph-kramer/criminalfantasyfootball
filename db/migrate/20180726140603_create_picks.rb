class CreatePicks < ActiveRecord::Migration[5.0]
  def change
    create_table :picks do |t|
      t.references :team, foreign_key: true
      t.references :nflteam, foreign_key: true

      t.timestamps
    end
  end
end
