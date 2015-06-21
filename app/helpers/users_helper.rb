module UsersHelper

  def admin_group?
    if user.admin?
      return 'Yes'
    else
      return 'No'
    end
  end
    
end
