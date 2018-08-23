class ProductionCompaniesController < ApplicationController

  def index
    @production_companies = ProductionCompany.all
  end

  def show
    @production_company = ProductionCompany.find(params[:id])
  end

  def new
    @production_company = ProductionCompany.new
  end

  def create
    @production_company = ProductionCompany.create(prod_params)
      if @production_company
        redirect_to @production_company
      else
        render :new
      end
  end

  def destroy
    @production_company = ProductionCompany.find(params[:id])
    if @production_company.destroy
      redirect_to production_companies_path
    else
      redirect_to production_company_path(@production_company)
    end
  end


  private

  def prod_params
    params.require(:production_company).permit(:name, :password)
  end




end# end of class
