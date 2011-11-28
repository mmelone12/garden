module SessionsHelper
  
  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    self.current_user = user
  end      
  
  def project_sign_in(project)
    cookies.permanent.signed[:remember_token] = [project.id]
    self.current_project = project
  end
  
  def current_user=(user)
    @current_user = user
  end    
  
  def current_project=(project)
    @current_project = project
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end      
     
  def current_project
    @current_project ||= project_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end      
  
  def project_signed_in?
    !current_project.nil?
  end
  
  def sign_out
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def current_user?(user)
    user == current_user
  end
     
  def current_project?(project)
    project == current_project
  end
  
  def authenticate
    deny_access unless signed_in?
  end    
  
  def project_authenticate
    deny_access unless project_signed_in?
  end

  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end
  
  private

    def user_from_remember_token
      User.authenticate_with_salt(*remember_token)
    end
    
    def project_from_remember_token
      Project.project_authenticate(*remember_token)
    end
    
    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end

    def store_location
      session[:return_to] = request.fullpath
    end

    def clear_return_to
      session[:return_to] = nil
    end
end