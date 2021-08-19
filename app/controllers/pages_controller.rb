class PagesController < ApplicationController
  def home
  end

  def profile
    @clowns = current_user.clowns
  end
end
