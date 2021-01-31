class StaticPagesController < ApplicationController
  def index
    flash.now[:notice] = 'Request sent!'

    @pokes = PokeGetter.get_pokes_image_url
  end
end
