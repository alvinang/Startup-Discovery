# need to switch to sidekiq
every 1.day, :at => '6:00 am' do
  rake "-s sitemap:refresh"
end