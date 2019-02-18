class SofasController < ApplicationController
  def index
    @sofas = Sofa.where(capacity: params['capacity'])
  end

  def new
  end

  def create
  end
end
