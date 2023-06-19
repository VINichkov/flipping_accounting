class City < ApplicationRecord

  after_create_commit { broadcast_prepend_to :cities, locals: {highlight: true} }
  after_update_commit { broadcast_replace_to :cities }
  after_destroy_commit { broadcast_remove_to :cities }

  validates :name, presence: true, uniqueness: true
  has_many :project
  validates 
end
