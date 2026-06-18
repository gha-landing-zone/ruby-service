require_relative "spec_helper"
require_relative "../app/hello_world"

RSpec.describe HelloWorld do
  include Rack::Test::Methods

  def app
    HelloWorld
  end

  describe "GET /" do
    it "returns 200 with Hello, World!" do
      get "/"
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq("Hello, World!")
    end
  end

  describe "GET /health" do
    it "returns 200 with status ok" do
      get "/health"
      expect(last_response.status).to eq(200)
      expect(JSON.parse(last_response.body)).to eq("status" => "ok")
    end
  end

  describe "unknown routes" do
    it "returns 404" do
      get "/unknown"
      expect(last_response.status).to eq(404)
    end
  end
end
