class User < ApplicationRecord
  self.per_page = 10
  validates :email, :name, :status, :phone, presence: true
  validates_uniqueness_of :email
  validates :status, inclusion: {in: ['active', 'inactive']}

  def last_updated
    updated_at.strftime("%-d/%-m/%y %-l:%M %p")
  end

  def active?
    status == 'active'
  end
end
