class AddNameToManager < ActiveRecord::Migration
  def change
    add_column :managers, :name, :string
  end
end
