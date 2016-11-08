#mvc - Models, Views, Controllers

require 'sinatra/base'

#controllers
require './controllers/application_controller'
require './controllers/superstar_controller'

#models
require './models/superstar'


map('/') {run ApplicationController}
map('/api/superstars') {run SuperstarController}


#before/after filter
before '/*' do 
	puts "Route log:"
	puts request.host
	puts params
	puts request.path
end

after '/*' do 
	puts "Completed Route Log:"
	puts reponse.body
	puts response.status
end



