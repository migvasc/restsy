class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #Não é necessário logar antes de acesar a pág, é um exagero
  #before_action :authenticate_user!
end
