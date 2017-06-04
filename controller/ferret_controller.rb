class FerretsController < Sinatra::Base
 	configure :development do
		register Sinatra::Reloader
		set :public_folder, 'public'

	end

		# INDEX

		# get '/ferrets' do
		# 	'<h1>Rabid Ferrets<h1>'
		# end

		#NEW
		get '/ferrets/new' do
			'NEW Ferrets'
		end
		#SHOW
		get '/ferrets/:id' do
			id = params[:id]
		end
		#CREATE
		post '/ferrets' do
			"my name is  #{params[:name]}, and I love  #{params[:favorite_food]}"
			 
		end
		#UPDATE 
		patch '/ferrets/:id' do
			id = params[:id]
		end
		#DELETE
		delete '/ferrets/:id' do
			id = params[:id]
		end
		#EDIT
		get '/ferrets/:id/edit' do
			"EDIT #{params[:id]}"
		end

		#SEND HTML
		get '/ferrets' do
			send_file 'public/index.html'

		end


end
