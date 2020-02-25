module UsersHelper
  def status_color(user)
    {style: 'background-color:' + (active?(user) ? 'green;' : 'red;')}
  end

  def active?(user)
    user.status == 'active'
  end

  def last_updated(user)
    user.updated_at.strftime("%-d/%-m/%y %-l:%M %p")
  end
end
