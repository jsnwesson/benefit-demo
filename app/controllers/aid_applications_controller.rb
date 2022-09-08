class AidApplicationsController < ApplicationController
  def index
    @aid_applications = AidApplication.all
  end

  def show
    @aid_application = AidApplication.find(params[:id])
  end

  def new
    @aid_application = AidApplication.new
  end
end
