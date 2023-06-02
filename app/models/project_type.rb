class ProjectType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :project
end
