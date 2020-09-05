class CreateDatacenters < ActiveRecord::Migration[6.0]
  def change
    create_table :datacenters do |t|
      t.string :code
      t.boolean :servers_available
      t.integer :servers_capacity
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
