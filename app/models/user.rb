class User < ApplicationRecord
  self.per_page = 10
  validates :email, :name, :status, :phone, presence: true
  validates_uniqueness_of :email
  validates :status, inclusion: {in: ['active', 'inactive']}
end
