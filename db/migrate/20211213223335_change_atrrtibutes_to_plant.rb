class ChangeAtrrtibutesToPlant < ActiveRecord::Migration[6.1]
  def change
    change_column :plants, :price, :decimal
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
