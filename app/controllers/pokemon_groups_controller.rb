class PokemonGroupsController < ApplicationController
  def index
    @trainer = current_trainer
    @teams = @trainer.teams
  end

  def new
  end

  def create
    team = Team.create(trainer_id:current_trainer.id)
    PokemonGroup.create([
                          {
                            pokemon_id: id_from_params_name(1),
                            team_id: team.id
                          },
                          {
                            pokemon_id: id_from_params_name(2),
                            team_id: team.id
                          },
                          {
                            pokemon_id: id_from_params_name(3),
                            team_id: team.id
                          },
                          {
                            pokemon_id: id_from_params_name(4),
                            team_id: team.id
                          },
                          {
                            pokemon_id: id_from_params_name(5),
                            team_id: team.id
                          },
                          {
                            pokemon_id: id_from_params_name(6),
                            team_id: team.id
                          }
                        ])
    redirect_to trainer_pokemon_groups_path
  end

  private

  def id_from_params_name(number)
    pokemon = Pokemon.find_by(name: params["pokemon_name#{number}"
                .to_sym]
                .downcase
                .capitalize)
    pokemon.id
  end
end
