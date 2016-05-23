class EmployersController < ApplicationController
  def index
    @employers = Employer.all
  end

  def show
    @employer = Employer.find(params[:id])
  end

  def new
    @employer = Employer.new
  end

  def edit
    @employer = Employer.find(params[:id])
  end

  def create
    @employer = Employer.new(employer_params)

    if @employer.save
      redirect_to @employer
    else
      render 'new'
    end
  end

  def update
    @employer = Employer.find(params[:id])

    if @employer.update(employer_params)
      redirect_to @employer
    else
      render 'edit'
    end
  end

  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy

    redirect_to employers_path
  end

  private
    def employer_params
      params.require(:employer).permit(:name, :company, :email, :role, :phone)
    end
end
