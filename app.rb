require "sinatra"
require_relative "tictactoe.rb"

get '/' do
	winner_result = " "
	erb :home
end

post '/board' do 
	a1 = params[:a1]
	a2 = params[:a2]
	a3 = params[:a3]
	a4 = params[:a4]
	a5 = params[:a5]
	a6 = params[:a6]
	a7 = params[:a7]
	a8 = params[:a8]
	a9 = params[:a9]
	# puts a1, a2, a3, a4, a5, a6, a7, a8, a9
	redirect '/play?a1=' + a1.upcase + '&a2=' + a2.upcase + '&a3=' + a3.upcase + '&a4=' + a4.upcase + '&a5=' + a5.upcase + '&a6=' + a6.upcase + '&a7=' + a7.upcase + '&a8=' + a8.upcase + '&a9=' + a9.upcase
end

get '/play' do
	default = " "
	winner_result = " "
	unbeatable = params[:unbeatable]
    a1 = params[:a1]
    a2 = params[:a2]
    a3 = params[:a3]
    a4 = params[:a4]
    a5 = params[:a5]
    a6 = params[:a6]
    a7 = params[:a7]
    a8 = params[:a8]
    a9 = params[:a9]

    if a1 == "X"
	   	 	a1 = "X"
		elsif a1 == """"
		  	a1 = """"
		else a1 = "O"
	end

	if a2 == "X"
			a2 = "X"
		elsif a2 == """"
			a2 = """"
		else a2 = "O"
	end

	if a3 == "X"
			a3 = "X"
		elsif a3 == """"
			a3 = """"
		else a3 = "O"
	end

	if a4 == "X"
			a4 = "X"
		elsif a4 == """"
			a4 = """"
		else a4 = "O"
	end

	if a5 == "X"
			a5 = "X"
		elsif a5 == """"
			a5 = """"
		else a5 = "O"
	end

	if a6 == "X"
			a6 = "X"
		elsif a6 == """"
			a6 = """"
		else a6 = "O"
	end

	if a7 == "X"
			a7 = "X"
		elsif a7 == """"
			a7 = """"
		else a7 = "O"
	end

	if a8 == "X"
			a8 = "X"
		elsif a8 == """"
			a8 = """"
		else a8 = "O"
	end

	if a9 == "X"
			a9 = "X"
		elsif a9 == """"
			a9 = """"
		else a9 = "O"
	end

	default = board(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	unbeatable  = ai(a1, a2, a3, a4, a5, a6, a7, a8, a9)

		if default == "a1"
			a1 = "X"
		elsif default == "a2"
			a2 = "X"
		elsif default == "a3"
			a3 = "X"
		elsif default == "a4"
			a4 = "X"
		elsif default == "a5"
			a5 = "X"
		elsif default == "a6"
			a6 = "X"
		elsif default == "a7"
			a7 = "X"
		elsif default == "a8"
			a8 = "X"
		elsif default == "a9"
			a9 = "X"
		end

		
		if unbeatable == "a1"
			a1 = "O"
		elsif unbeatable == "a3"
			a3 = "O"
		elsif unbeatable == "a7"
			a7 = "O"
		elsif unbeatable == "a9"
			a9 = "O"
		end


	winner_result = winner(a1.upcase, a2.upcase, a3.upcase, a4.upcase, a5.upcase, a6.upcase, a7.upcase, a8.upcase, a9.upcase)		
	erb :play, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4, :a5 => a5, :a6 => a6, :a7 => a7, :a8 => a8, :a9 => a9, :unbeatable => unbeatable, :default => default, :winner_result => winner_result}

end