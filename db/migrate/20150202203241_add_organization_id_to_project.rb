class AddOrganizationIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :organization_id, :integer, null: false
  end
end
