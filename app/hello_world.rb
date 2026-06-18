require "sinatra/base"
require "json"

class HelloWorld < Sinatra::Base
  get "/" do
    "Hello, World!"
  end

  get "/health" do
    content_type :json
    { status: "ok" }.to_json
  end

  not_found do
    content_type :json
    { error: "Not found" }.to_json
  end
end
