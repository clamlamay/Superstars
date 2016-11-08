class SuperstarController < ApplicationController

	get '/' do
		#get all
		Superstar.all.to_json
	end

	get '/:id' do
		#get by id
		@id = params[:id]
		Superstar.find(@id).to_json
	end
	
	post '/' do
		#create
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]

		@model = Superstar.new
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save
		#place a breakpoint in ruby!
		# binding.pry
		# ^ the code stops here
		@model.to_json
	end

	patch '/:id' do
		#update by id
		@id = params[:id]
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]
		@model = Superstar.find(@id)
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save
		@model.to_json

	end

	delete '/:id' do
		#delete by id
		@id = params[:id]
		@model = Superstar.find(@id)
		@model.destroy
		{:message => "Item of id " + @id + " was removed."}.to_json
	end


	# get '/fab' do
	# 	#teach you how to rule the databse
	# 	#activerecord - ORM - Object relation manager
		
	# 	#create
	# 	@christopher = Superstar.new
	# 	@christopher.talent = 'Socialiate'
	# 	@christopher.name = 'Christopher McAwesome'
	# 	@christopher.outfit = 'blue sweater'
	# 	@christopher.save
	# 	@christopher.to_json
		
	# 	#crud
	# 	#delete
	# 	#update
	# 	#read
	# end

end