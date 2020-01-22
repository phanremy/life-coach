class CreateDanceDates < ActiveRecord::Migration[5.2]
  def change
    create_table :dance_dates do |t|
      t.date :date
      t.references :dance_calendar, foreign_key: true
      t.boolean :dance, default: false
      t.text :notes

      t.timestamps
    end
  end
end
