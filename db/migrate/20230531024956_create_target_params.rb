class CreateTargetParams < ActiveRecord::Migration[7.0]
  def change
    create_table :target_params do |t|
      t.references :project, null: false, foreign_key: true
      t.float :start_price
      t.boolean :is_credit
      t.float :initial_fee
      t.float :mortgage_interest
      t.integer :project_duration
      t.float :additional_expenses
      t.float :monthly_payment

      t.timestamps
    end
  end
end
