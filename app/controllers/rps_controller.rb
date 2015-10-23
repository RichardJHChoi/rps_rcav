class RpsController < ApplicationController

	def rock
		@game = ["Rock", "Paper", "Scissors"].sample


		if @game=="Rock"
			@results="You tied"
			@button="warning"
		elsif @game=="Paper"
			@results="You lost!"
			@button="danger"
		elsif @game=="Scissors"
			@results="You win!"
			@button="success"
		end
		render("rock.html.erb")	
	end

	
	def paper
		@game = ["Rock", "Paper", "Scissors"].sample	
		
		if @game=="Rock"
			@results="You win!"
			@button="success"
		elsif @game=="Paper"
			@results="You tied"
			@button="warning"
		elsif @game=="scissors"
			@results="You lost!"
			@button="danger"
		end

		render("paper.html.erb")
	end

	def scissors
		@game = ["Rock", "Paper", "Scissors"].sample
		
		if @game=="rock"
			@results="You lost!"
			@button="danger"
		elsif @game=="paper"
			@results="You won!"
			@button="success"
		elsif @game=="scissors"
			@results="You tied"
			@button="warning"
		end

		render("scissors.html.erb")
	end

end