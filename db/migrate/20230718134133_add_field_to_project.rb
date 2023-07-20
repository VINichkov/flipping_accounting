class AddFieldToProject < ActiveRecord::Migration[7.0]
  def change
    add_column(
      :projects,
      :credit_duration,
      :integer,
      default: 120, comment: "Планируемая продолжительность пользования кредита. По умолчанию 120 дней"
    )
    change_column(
      :projects,
      :project_duration,
      :integer,
      default: 120, comment: "Планируемая продолжительность проекта. По умолчанию 120 дней"
    )
  end
end
