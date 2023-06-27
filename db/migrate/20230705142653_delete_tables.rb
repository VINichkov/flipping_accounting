class DeleteTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :states
    drop_table :target_params
  end
end
