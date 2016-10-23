class SessionsController < ApplicationController

  def create
    trainer = Trainer.find_by_email(params[:email])
    if trainer && trainer.authenticate(params[:password])
      session[:trainer_id] = trainer.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:trainer_id] = nil
    redirect_to '/login'
  end
end
