class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.date :start_date
      t.time :start_time
      t.time :end_time
      t.decimal :price

      t.timestamps
    end
  end
end
