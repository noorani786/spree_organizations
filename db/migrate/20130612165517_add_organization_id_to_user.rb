class AddOrganizationIdToUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :organization_id, :integer
  end
end
