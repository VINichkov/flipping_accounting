class ChangeCreditDuration < ActiveRecord::Migration[7.0]
  def up
    change_column(
      :projects,
      :project_duration,
      :integer,
      default: 3, comment: "Планируемая продолжительность проекта. По умолчанию 3 платежа"
    )
  end

  def down
    change_column(
      :projects,
      :project_duration,
      :integer,
      default: 120, comment: "Планируемая продолжительность проекта."
    )
  end
end
