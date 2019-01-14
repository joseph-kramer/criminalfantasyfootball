class CreateElements < ActiveRecord::Migration[5.0]
  def change
    create_table :elements do |t|
      t.references :crime, foreign_key: true
      t.references :characteristic, foreign_key: true

      t.timestamps
    end
  end
end
