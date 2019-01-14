class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.integer :week
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
