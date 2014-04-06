module CompaniesHelper
  
  def cache_key_for_companies
    time_difference = ((Time.now - @company.updated_at)/86400).round
    
    if (time_difference > 30) 
      "#{@company.slug}-#{Time.now.to_i}"
    else
      "#{@company.slug}-#{@company.updated_at.to_i}"      
    end
  end
  
end
