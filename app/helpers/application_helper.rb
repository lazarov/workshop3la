module ApplicationHelper

  def admin?
    signed_in? && current_user.admin?
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


  def bootstrap_flash_class(flash_type)
     { success: 'alert-success',
       error:   'alert-danger',
       alert:   'alert-warning',
       notice:  'alert-info'
     }[flash_type.to_sym] || flash_type.to_s
   end

end
