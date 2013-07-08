class CreateOrganization < ActiveRecord::Migration
  def change
    create_table :spree_organizations do |t|
      t.string :name
      t.integer :owner_id
      
      t.timestamps
    end
  end
end
