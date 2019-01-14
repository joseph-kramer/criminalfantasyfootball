class CreateNflteams < ActiveRecord::Migration[5.0]
  def change
    create_table :nflteams do |t|
      t.string :name
      t.string :abbreviation
      t.string :image_file_name

      t.timestamps
    end
  end
end
