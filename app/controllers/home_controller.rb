class HomeController < ApplicationController
  before_action :set_user, only: :confirme_user
  layout 'dashboard', except: :index
  
  def index
    if user_signed_in?
      redirect_to dashboard_path
    end
  end
  
  def dashboard
    unless user_signed_in?
      redirect_to root_path
    end
  end
  
  def admin_dashboard
    if not user_signed_in? or not current_user.admin 
      redirect_to dashboard_path 
    end
    
    @users_confirmed = User.where pay: true
    # BUG DO RAILS!! Quando o default de uma variavel boolean é false ela é setanda como zero
    @users_unconfirmed = User.where(pay: 0)
    @courses = Course.all
  end
  
  def confirme_user
    @user.pay = 1
    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_dashboard_path, notice: 'Particante confirmado com sucesso', tab: 'second' }
      else
        format.html { redirect_to admin_dashboard_path, notice: 'Ocorreu um erro!! contate o desenvolvedor!', tab: 'second' }
      end
    end
  end
  
  private 
  def set_user
    @user = User.find(params[:id])
  end
  
end
