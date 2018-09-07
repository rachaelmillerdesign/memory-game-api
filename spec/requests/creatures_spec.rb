require 'rails_helper'

RSpec.describe "Creatures", type: :request do
  describe "GET /creatures" do
    it "works! (now write some real specs)" do
      get creatures_path
      expect(response).to have_http_status(200)
    end
  end
end
