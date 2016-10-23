class PokemonGroupsController < ApplicationController
def index
  @trainer = current_trainer
  @teams = @trainer.teams
end

def new
  @team = Team.create
end

end
