class Project < ApplicationRecord
  belongs_to :city
  belongs_to :project_type
  belongs_to :state
  has_one :project
end
