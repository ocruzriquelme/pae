class InicioController < ApplicationController
  before_action :authenticate_admin!
  def index
    @index = 'index'
  end
end
