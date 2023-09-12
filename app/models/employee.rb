class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :department
  belongs_to :job_position
  has_many :salaries
  has_many :leaves
  has_many :attendances
end
