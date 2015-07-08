 class WelcomesController < ApplicationController
  
  def index
    @rosters = Roster.all
  end

  def index 
    @carousels = Carousel.all 
  end  

  def index 
    @backgrounds = Background.all 
  end 

 def index
   @background_twos = BackgroundTwo.all
 end

end 