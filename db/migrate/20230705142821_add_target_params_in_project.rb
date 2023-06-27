class AddTargetParamsInProject < ActiveRecord::Migration[7.0]
  def change
    add_column(
      :projects,
      :start_price,
      :float,
      default: 0,  comment: "Cтартовая цена"
    )
    add_column(
      :projects,
      :is_credit,
      :boolean,
      default: false, comment: "Кредитные средства или собственные. По умолчанию собственные"
    )
    add_column(
      :projects,
      :initial_fee,
      :float,
      default: 0, comment: "Первоначальный платеж. Только для кредитных"
    )
    add_column(
      :projects,
      :mortgage_interest,
      :float,
      default: 0, comment: "Процент по ипотеке. Только для кредитных"
    )
    add_column(
      :projects,
      :project_duration,
      :float,
      default: 120, comment: "Планируемая продолжительность проекта. По умолчанию 120 дней"
    )
    add_column(
      :projects,
      :additional_expenses,
      :float,
      default: 0, comment: "Общая сумма дополнительных платежей"
    )
    add_column(
      :projects,
      :monthly_payment,
      :float,
      default: 0, comment: "Ежемесячный платеж"
    )
  end
end
