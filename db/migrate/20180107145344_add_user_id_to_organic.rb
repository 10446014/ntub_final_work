class AddUserIdToOrganic < ActiveRecord::Migration[5.1]
  def change
    add_column :organics, :user_id, :integer
  end
end
