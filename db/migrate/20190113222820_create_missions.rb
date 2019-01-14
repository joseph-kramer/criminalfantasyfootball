class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.references :team, foreign_key: true
      t.references :quest, foreign_key: true

      t.timestamps
    end
  end
end
