class ChangeColName < ActiveRecord::Migration[5.1]
  def change
      rename_column :listings, :about_palce, :about_listing
  end
end
