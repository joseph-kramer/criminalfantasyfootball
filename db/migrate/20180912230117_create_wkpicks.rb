class CreateWkpicks < ActiveRecord::Migration[5.0]
  def change
    create_table :wkpicks do |t|
      t.references :team
      t.references :nflteam
      t.integer :week

      t.timestamps
    end
  end
end
