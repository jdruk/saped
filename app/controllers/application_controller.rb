class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  
  # Devise
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
    update_attrs = [:author_one_cpf, :author_two_cpf, :author_three_cpf,
    :article_aproved, :article_title,:author_one,:author_two,:author_three,
    :name, :cpf, :matriculation, :participation_id, :theme_id, :course_id, :article]
    
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    devise_parameter_sanitizer.permit :sign_up, keys: update_attrs
  end
  
end
