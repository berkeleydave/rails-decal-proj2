class PokemonsController < ApplicationController
  def index
  end

  def capture
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.trainer_id = current_trainer.id
  	@pokemon.save
  	redirect_to root_path
  end

  def damage
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.health -= 10
  	@pokemon.save
  	if @pokemon.health <= 0
  		@pokemon.destroy
  	end
  	redirect_to current_trainer
  end

  def new
  	@pokemon = Pokemon.new
  end

  def create
  	@pokemon = Pokemon.create(pokemon_params)
  	@pokemon.health = 100
  	if params[:pokemon][:name] == "charizard100"
  		@pokemon.level = 100
  	else
  		@pokemon.level = 1
  	end
  	
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to current_trainer
    else
      render :new
    end
  end

  def pokemon_params
  	params.require(:pokemon).permit(:name)
  end

end