module UsersHelper
  def status_color(user)
    {style: 'background-color:' + (active?(user) ? 'green;' : 'red;')}
  end

  def active?(user)
    user.status == 'active'
  end
end
