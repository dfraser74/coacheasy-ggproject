class AddEasyRolesToCoaches < ActiveRecord::Migration
  def self.up
    add_column :coaches, :roles, :string, :default => "--- []"
  end

  def self.down
    remove_column :coaches, :roles
  end
end
