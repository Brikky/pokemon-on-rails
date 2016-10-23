class TrainersController < ApplicationController
  def new
  end

  def create
    trainer = Trainer.new(trainer_params)
    if trainer.save
      session[:trainer_id] = trainer.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :email, :password, :password_confirmation)
  end
end
