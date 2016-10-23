class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_trainer
    @current_trainer ||= Trainer.find(session[:trainer_id]) if session[:trainer_id]
  end
  helper_method :current_trainer

  def authorize
    redirect_to '/login' unless current_trainer
  end

  
  end
