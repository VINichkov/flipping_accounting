class ProjectForm < ApplicationForm

  #ID проекта.
  attribute :id, Numeric

  # Наименование проекта. Должно быть уникальным.
  attribute :name, String, default: "Новый проект #{Project.count}"

  # Город проекта
  attribute :city, Numeric, default: City.find_by_name('Омск')&.id

  # Тип проекта
  attribute :project_type, Numeric, default: ProjectType.find_by_name('Не выбран')&.id

  # Cтартовая цена
  attribute :start_price, Float, default: 0

    # Кредитные средства или собственные. По умолчанию собственные
  attribute :is_credit, Boolean, default: false

  # Первоначальный платеж. Только для кредитных
  attribute :initial_fee, Float, default: 0

  # Процент по ипотеке. Только для кредитных
  attribute :mortgage_interest, Float, default: 0

  # Планируемая продолжительность проекта. По умолчанию 120 дней
  attribute :project_duration, Numeric, default: 120

  # Общая сумма дополнительных платежей
  attribute :additional_expenses, Float, default: 0

  # Ежемесячный платеж.
  attribute :monthly_payment, Float, default: 0

  validates :name, :city, :project_type, :start_price, :project_duration, :is_credit, presence: true

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end

  private

  def persist!
    project = Project.create(
      name: name,
      city: city,
      project_type: project_type
    )
    @expense = user.project.create!(
      start_price: start_price,
      is_credit: is_credit,
      initial_fee: initial_fee,
      mortgage_interest: mortgage_interest,
      project_duration: project_duration,
      additional_expenses: additional_expenses,
      monthly_payment: monthly_payment
    )
  end

end
