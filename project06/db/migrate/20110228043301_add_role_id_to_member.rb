class AddRoleIdToMember < ActiveRecord::Migration
  def self.up
    add_column :members, :role_id, :integer
  end

  def self.down
    remove_column :members, :role_id
  end
end
