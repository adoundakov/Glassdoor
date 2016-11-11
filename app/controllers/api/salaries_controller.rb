class Api::SalariesController < ApplicationController
  def index
    if params[:search_type] == 'SEARCH'
      @salaries = Salary.search_by_props(params[:query]).includes(:company)
    else
      @salaries = Salary.all.includes(:company)
    end
  end

  def show
  end

  def create
  end

  private

  def salary_params
    params.require(:salary).permit(:company_id, :salary, :title)
  end
end
