class Api::SalariesController < ApplicationController
  def index
    if params[:search_type] == 'COMPANY'
      @salaries = Salary.search_by_props(params[:query])
    elsif params[:search_type] == 'TITLE'
      @salaries = Salary.search_by_title(params[:query])
    else
      @salaries = Salary.all_by_position
    end
  end

  def show
    # is this necessary? may end up taking out later
  end

  def create
    @salary = Salary.new(salary_params)
    @salary.user_id = current_user.id
    @salary.company_id = params[:company_id]

    if @salary.save
      @salaries = current_user.salaries
      render "api/salaries/index"
    else
      render json: @salary.errors.full_messages, status: 400
    end
  end

  private

  def salary_params
    params.require(:salary).permit(:company_id, :salary, :title)
  end
end
