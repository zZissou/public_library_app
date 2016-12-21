class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..15 }
end
