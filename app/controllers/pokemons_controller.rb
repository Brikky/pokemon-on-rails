class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @pokemon_types = @pokemon.pokemon_types
    @element_types = @pokemon_types.map do |type|
      ElementType.find(type[:element_type_id])
    end
    @strong_against = @element_types.map do |ele|
      ele.strong_against
    end
    @strong_against.flatten!.uniq!
    @weak_against = @element_types.map do |ele|
      ele.weak_against
    end
    @weak_against.flatten!.uniq!
  end
end
