Rails.application.routes.draw do
  get("/", { :controller => "roll", :action => "home" })
  #get("/dice/2/6", { :controller => "roll", :action => "results" })
  #get("/dice/2/10", { :controller => "roll", :action => "results" })
  #get("/dice/1/20", { :controller => "roll", :action => "results" })
  #get("/dice/5/4", { :controller => "roll", :action => "results" })

  get("/dice/:dice/:sides", { :controller => "roll", :action => "results"})

end
