class EmployeesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
  end

  def create
    render plain: params[:employee].inspect
  end

  def create
    @employee = Employee.new(employee_params)

    @employee.save
    redirect_to @employee
  end

  private
    def employee_params
      params.require(:employee).permit(:name, :email, :phone)
    end
end
