class Api::CompaniesController < ApplicationController
  def index
    if params[:search_type] == 'SEARCH'
      # Will implement later, PHASE 4
    else
      @companies = Company.all
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  # TODO: Implement These later
  #
  # def update
  # end
  #
  # def destroy
  # end
end
