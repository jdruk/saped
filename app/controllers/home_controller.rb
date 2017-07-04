class HomeController < ApplicationController
  # Politica de acesso
  before_action :access_dashboard, excepct: :index
  
  def index
    if user_signed_in?
      redirect_to dashboard_path
    end
  end
  
  def dashboard
  end
  
  def admin_dashboard
  end
  
  private
  
  def access_dashboard
     if user_signed_in? 
      if current_user.admin 
        redirect_to admin_dashboard_path
      end
    else
      redirect_to root_path
    end
  end  
end
