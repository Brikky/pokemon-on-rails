class TeamsController < ApplicationController

def destroy
  team_id = params[:id]
  Team.find(team_id).destroy
  redirect_to  trainer_pokemon_groups_path(current_trainer)
end

end
