class ClownsController < ApplicationController
  def index
    @clowns = Clown.all
  end
end
