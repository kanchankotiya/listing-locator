class DropTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :active_admin_comments
    drop_table :users
  end
end
