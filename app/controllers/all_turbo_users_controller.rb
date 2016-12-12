class AllTurboUsersController < ApplicationController
  before_filter :authenticate_admin!, :except => [:show]
  def index
  end
end



