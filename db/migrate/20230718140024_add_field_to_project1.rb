class AddFieldToProject1 < ActiveRecord::Migration[7.0]
  def change
    add_column(
      :projects,
      :additional_exp_credit,
      :float,
      default: 0, comment: "Дополнительные платежи по ипотеке (страховка и т.п)."
    )
    add_column(
      :projects,
      :final_price,
      :float,
      default: 0, comment: "Цена продажи"
    )
  end
end

