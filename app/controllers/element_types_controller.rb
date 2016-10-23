class ElementTypesController < ApplicationController

  def index
    @element_types = ElementType.all
  end 
end
