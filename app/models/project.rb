class Project < ApplicationRecord
  include AASM
  belongs_to :city
  belongs_to :project_type
  has_one :target_param

  after_create_commit { broadcast_prepend_to :projects, locals: {highlight: true} }
  after_update_commit { broadcast_replace_to :projects }
  after_destroy_commit { broadcast_remove_to :projects }

  aasm column: :state do
    state :new, initial: true, display: 'Планирование'
    state :close, display: 'Закрыт'
    state :buy, display: 'Покупка'
    state :repair, display: 'Ремонт'
    state :sale, display: 'Продажа'

    event :close do
      transitions from: :new, to: :close
    end

    event :next do
      transitions from: :new, to: :buy
      transitions from: :buy, to: :repair
      transitions from: :repair, to: :sale
      transitions from: :sale, to: :close
    end

  end

end
