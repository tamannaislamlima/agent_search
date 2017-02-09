class AddLocationToAgent < ActiveRecord::Migration
  def change
    add_column :agents, :location, :string
  end
end
