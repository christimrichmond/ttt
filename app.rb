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
	computer = " "
	winner_result = " "
    a1 = params[:a1]
    a2 = params[:a2]
    a3 = params[:a3]
    a4 = params[:a4]
    a5 = params[:a5]
    a6 = params[:a6]
    a7 = params[:a7]
    a8 = params[:a8]
    a9 = params[:a9]
    
    if a1 == "O"
	   	 	a1 = "O"
		elsif a1 == """"
		  	a1 = """"
		else a1 = "X"
	end

	if a2 == "O"
			a2 = "O"
		elsif a2 == """"
			a2 = """"
		else a2 = "X"
	end

	if a3 == "O"
			a3 = "O"
		elsif a3 == """"
			a3 = """"
		else a3 = "X"
	end

	if a4 == "O"
			a4 = "O"
		elsif a4 == """"
			a4 = """"
		else a4 = "X"
	end

	if a5 == "O"
			a5 = "O"
		elsif a5 == """"
			a5 = """"
		else a5 = "X"
	end

	if a6 == "O"
			a6 = "O"
		elsif a6 == """"
			a6 = """"
		else a6 = "X"
	end

	if a7 == "O"
			a7 = "O"
		elsif a7 == """"
			a7 = """"
		else a7 = "X"
	end

	if a8 == "O"
			a8 = "O"
		elsif a8 == """"
			a8 = """"
		else a8 = "X"
	end

	if a9 == "O"
			a9 = "O"
		elsif a9 == """"
			a9 = """"
		else a9 = "X"
	end

	# print a1, a2, a3, a4, a5, a6, a7, a8, a9

	computer = board(a1, a2, a3, a4, a5, a6, a7, a8, a9)

		if computer == "a1"
			a1 = "O"
		elsif computer == "a2"
			a2 = "O"
		elsif computer == "a3"
			a3 = "O"
		elsif computer == "a4"
			a4 = "O"
		elsif computer == "a5"
			a5 = "O"
		elsif computer == "a6"
			a6 = "O"
		elsif computer == "a7"
			a7 = "O"
		elsif computer == "a8"
			a8 = "O"
		elsif computer == "a9"
			a9 = "O"
		end

	
	winner_result = winner(a1.upcase, a2.upcase, a3.upcase, a4.upcase, a5.upcase, a6.upcase, a7.upcase, a8.upcase, a9.upcase)		
	erb :play, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4, :a5 => a5, :a6 => a6, :a7 => a7, :a8 => a8, :a9 => a9, :computer => computer, :winner_result => winner_result}

end