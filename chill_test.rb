ENV['RACK_ENV'] = 'test'

require "minitest/autorun"
require "minitest/focus"
require "minitest/pride"
require 'rack/test'
require_relative "chill_app"

class ChillTest < Minitest::Test
  include Rack::Test::Methods

  def app
    ChillApp
  end

  def test_welcome_message
    response = get "/"
    assert response = "Hello there. What are you doing Friday?"
  end

  def test_specialized_message
    get "/billy?name=James"
    response = get "/"
    assert response = "Hello there James. We haven't chilled in a while. You want to come by Friday? Netflix has a couple of good movies."
  end

  def test_loren_ipsum
    get "/loren/standard"
    response = "/loren/standard"
    assert response = "http://meettheipsums.com/"
  end
end
