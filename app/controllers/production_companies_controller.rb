class ProductionCompaniesController < ApplicationController

  def index
    @production_companies = ProductionCompany.all
  end

  def show
    @production_company = ProductionCompany.find(params[:id])
  end

  def new

  end

  def create
  end


  private

  def prod_params
    params.require(:production_companies).permit(:name)
  end




end# end of class
