class CompaniesController < ApplicationController    
  include HTTParty
  
  def new
    @company = Company.new
  end
  
  def create
    if @company = Company.find_by(name: company_params['name'])
      redirect_to company_url(@company)
    else
      @company = Company.new(company_params)
    
      if @company.save
        redirect_to company_url(@company)
      else
        flash.now[:errors] = @company.errors.full_messages
        render :new
      end
    end
  end
  
  def show
    @company = Company.friendly.find(params[:id])
    get_api_data(@company)
  end
    
  private
  
  def company_params
    params.require(:company).permit(:name)
  end
  
  def get_api_data(company)
    if stale?(company)
      @crunchbase = crunchbase_api(company.name.gsub(' ', ''))
      @compete = compete(Company.clean_url(@crunchbase.homepage_url)) 
      @angel = AngellistApi.startup_search(:slug => "#{company.name.gsub(' ', '')}")
      company_id = @angel.id
      @angel_jobs = AngellistApi.get_startup_jobs(company_id)
    end
  end
  
  COMPETE_KEY = [ENV['COMPETE_PASSIONATE_API_KEY_2'], ENV['COMPETE_PASSIONATE_API_KEY'], ENV['COMPETE_PASSIONATE_API_KEY_1'], 
                  ENV['COMPETE_2'], ENV['COMPETE_API_KEY_2'], ENV['COMPETE_API_KEY'], ENV['COMPETE_VIN_API_KEY'], ENV['COMPETE_ASFLUX_API_KEY']];
  
  def compete(url)
    num = rand(0..6)
    compete_url = JSON.parse HTTParty.get("http://apps.compete.com/sites/#{url}/trended/uv/?apikey=#{COMPETE_KEY[num]}").response.body      
  end
  
  def crunchbase_api(name)
    Crunchbase::Company.get("#{name}")
  end
  
end
