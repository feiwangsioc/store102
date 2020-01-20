class WelcomeController < ApplicationController
    def index
        flash[:notice] = "Good morning Sir"
    end 
end
