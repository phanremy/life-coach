class CreateDiaryDates < ActiveRecord::Migration[5.2]
  def change
    create_table :diary_dates do |t|
      t.date :date, default: Date.today
      t.boolean :dance, default: true
      t.text :dance_notes
      t.boolean :code, default: true
      t.text :code_notes

      t.timestamps
    end
  end
end
