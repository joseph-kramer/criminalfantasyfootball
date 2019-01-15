class CreateCrimes < ActiveRecord::Migration[5.0]
  def change
    create_table :crimes do |t|
      t.string :player
      t.boolean :is_player
      t.date :crime_date
      t.text :description
      t.string :crime_type
      #t.integer :crime_level, default: 0
      t.boolean :suspension
      t.date :suspension_date
      t.integer :suspension_games, default: 0
      t.string :url
      t.integer :points
      t.references :nflteam, foreign_key: true

      t.timestamps
    end
  end
end
