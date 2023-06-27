class Project < ApplicationRecord
  belongs_to :city
  belongs_to :project_type
  belongs_to :state
  has_one :target_param

  after_create_commit { broadcast_prepend_to :projects, locals: {highlight: true} }
  after_update_commit { broadcast_replace_to :projects }
  after_destroy_commit { broadcast_remove_to :projects }

end
