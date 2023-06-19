class ProjectType < ApplicationRecord

  after_create_commit { broadcast_prepend_to :project_types, locals: {highlight: true}  }
  after_update_commit { broadcast_replace_to :project_types }
  after_destroy_commit { broadcast_remove_to :project_types }

  validates :name, presence: true, uniqueness: true
  has_many :project
end
