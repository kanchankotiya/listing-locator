class CreateOpeningHours < ActiveRecord::Migration[5.1]
  def change
    create_table :opening_hours do |t|
      t.string :day
      t.string :from
      t.string :to
      t.integer :listing_id

      t.timestamps
    end
  end
end
