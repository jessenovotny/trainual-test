class User < ApplicationRecord
  validates :email, :name, :status, :phone, presence: true
  validates_uniqueness_of :email
  validates :status, inclusion: {in: ['active', 'inactive']}
end
