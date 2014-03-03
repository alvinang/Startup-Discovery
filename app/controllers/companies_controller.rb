class CompaniesController < ApplicationController
  
  include HTTParty
  
  def new
    @company = Company.new
    render :new
  end
  
  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to company_url(@company)
    else
      flash.now[:errors] = @company.errors.full_messages
      render :new
    end
  end
  
  def show
    company = Company.find(params[:id])
    @response = JSON.parse HTTParty.get("http://api.crunchbase.com/v/1/company/#{company.name}.js?api_key=#{ENV['CRUNCHBASE_API_KEY']}").response.body
    @crunchbase = Crunchbase::Company.get("#{company.name}")
    @angel = AngellistApi.all_startups(:filter => :hiring)
    render :show
  end
  
  private
  
  def company_params
    params.require(:company).permit(:name)
  end
  
end
