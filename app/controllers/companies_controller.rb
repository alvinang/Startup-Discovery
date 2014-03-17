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
    @company = Company.find(params[:id])
    @crunchbase = crunchbase_api(@company.name.gsub(' ', ''))
    @compete = compete(@company.name, Company.clean_url(@crunchbase.homepage_url)) 
    @angel = AngellistApi.startup_search(:slug => "#{@company.name.gsub(' ', '')}")
           
    render :show
  end
  
  private
  
  def company_params
    params.require(:company).permit(:name)
  end
  
  def compete(name, url)
    JSON.parse HTTParty.get("https://apps.compete.com/sites/#{url}/trended/uv/?apikey=#{ENV['COMPETE_ASFLUX_API_KEY']}").response.body
  end
  
  def crunchbase_api(name)
    Crunchbase::Company.get("#{name}")
  end
  
end
