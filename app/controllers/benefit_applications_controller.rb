class BenefitApplicationsController < ApplicationController
  def index
    @benefit_applications = BenefitApplication.all
  end

  def show
    @benefit_application = BenefitApplication.find(params[:id])
  end

  def new
    @benefit_application = BenefitApplication.new
  end

  def create
    @benefit_application = BenefitApplication.new(benefit_params)

    if @benefit_application.save
      redirect_to benefit_applications_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def benefit_params
    params.require(:benefit_application).permit(:name)
  end
end
