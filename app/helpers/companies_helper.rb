module CompaniesHelper
  
  def cache_key_for_companies
    time_difference = ((Time.now - @company.updated_at)/86400).round
    
    if (time_difference > 30) 
      "#{params[:id]}-#{Time.now.to_i}"
    else
      "#{params[:id]}-#{@company.updated_at.to_i}"      
    end
  end
  
end
