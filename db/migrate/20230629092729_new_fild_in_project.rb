class NewFildInProject < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :state_id
    add_column :projects, :state, :string
  end
end
