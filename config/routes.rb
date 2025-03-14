Rails.application.routes.draw do

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
  get("/", { :controller => "dice", :action => "home" })
  get("dice/2/6", { :controller => "dice", :action => "two_six" })
  get("dice/2/10", { :controller => "dice", :action => "two_ten" })
  get("dice/1/20", { :controller => "dice", :action => "one_twenty" })
  get("dice/5/4", { :controller => "dice", :action => "five_four" })
  get("dice/:quantity/:sides", { :controller => "dice", :action => "anydice" })
end
