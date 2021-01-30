class HomeController < ApplicationController
  def index
    flash.now[:notice] = 'Request sent!'
    @pokes = PokeGetter.get_pokes_list

    @pokes2 = PokeGetter.get_poke
  end
end
