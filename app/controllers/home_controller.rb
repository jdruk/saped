class HomeController < ApplicationController
  before_action :set_user, only: [:confirme_user, :aprove_article]
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
    
    
    # BUG DO RAILS!! Quando o default de uma variavel boolean é false ela é setanda como zero
    @users_unconfirmed = User.order(:name).where(pay: 0) - User.where(:email=> 'geral@email.com')
    @courses = Course.order(:name).all
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
  
  def negative_article
    @user.obs = params[:obs]
    if @user.save
      redirect_to admin_dashboard_path, notice: 'Artigo reprovado', tab: 'four' 
    else
      redirect_to admin_dashboard_path, notice: 'Ocorreu um erro', tab: 'four' 
    end
  end
  
  def user_poster
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'home/reporte', pdf: 'Reporte' 
      end
    end
  end 
  
  def geral
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'home/geral', pdf: 'Reporte' 
      end
    end
  end
  
  def termo 
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'home/termo', pdf: 'Termo' 
      end
    end
  end
  
  def aprove_article
    @user.article_aproved= true;
    if @user.save
      redirect_to admin_dashboard_path, notice: 'Artigo aprovado', tab: 'four' 
    else
      redirect_to admin_dashboard_path, notice: 'Ocorreu um problema', tab: 'four' 
    end
  end
  
  private 
  def set_user
    @user = User.find(params[:id])
  end
  
end
