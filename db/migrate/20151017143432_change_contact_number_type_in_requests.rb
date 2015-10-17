class ChangeContactNumberTypeInRequests < ActiveRecord::Migration
  def change
  	 change_column :requests, :contact_number, :bigint
  end
end
