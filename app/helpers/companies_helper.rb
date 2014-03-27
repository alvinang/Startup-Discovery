module CompaniesHelper
  
  def cache_key_for_companies
    Digest::SHA1.hexdigest(params.sort.flatten.join("_"))
  end
  
end
