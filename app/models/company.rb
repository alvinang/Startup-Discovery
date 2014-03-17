# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Company < ActiveRecord::Base
  validates :name, presence: true
  
  def self.clean_url(url)
    url.gsub("http://", "").gsub("https://", "")
  end
  
  def self.company_exist?(name)
    exist = Company.find_by(name: name) ? exist : false
  end
  
end
