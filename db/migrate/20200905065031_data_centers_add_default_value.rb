class DataCentersAddDefaultValue < ActiveRecord::Migration[6.0]
  def change
    change_column :datacenters, :servers_capacity, :integer, default: 0
  end
end
