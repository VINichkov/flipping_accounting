class State < ApplicationRecord
  after_create_commit { broadcast_prepend_to "state_#{id}" }
  after_update_commit { broadcast_replace_to "state_#{id}" }
  validates :name, presence: true, uniqueness: true
  has_many :project
end
