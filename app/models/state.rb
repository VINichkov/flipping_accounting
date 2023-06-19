class State < ApplicationRecord

  after_create_commit { broadcast_prepend_to :states, locals: {highlight: true}  }
  after_update_commit { broadcast_replace_to :states }
  after_destroy_commit { broadcast_remove_to :states }

  validates :name, presence: true, uniqueness: true
  has_many :project
end
