module UsersHelper
  def status_color(user)
    {style: 'background-color:' + (user.active? ? 'green;' : 'red;')}
  end
end
