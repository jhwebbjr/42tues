require "sinatra/base"
require "pry"
require "httparty"

class ChillApp < Sinatra::Base
#Index: GET "/", returns a welcome message
  get "/" do
    body("Hello there. What are you doing Friday?")
  end
  #Show: GET "/billy", returns a specializaed welcome message for whatever name is passed to it as a param
  get "/billy" do
    result = params[:name]
    body("Hello there #{result}. We haven't chilled in a while. You want to come by Friday? Netflix has a couple of good movies.")
  end
#Lorem: GET "/lorem/standard", returns lorem ipsum of the type requested
  get "/lorem/standard" do
    body("http://meettheipsums.com/")
  end
end
