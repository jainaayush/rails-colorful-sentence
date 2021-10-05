require 'rails_helper'

RSpec.describe SentencesController, type: :controller do
  describe "GET index" do
    let(:sentence) { create(:sentence) }

    it "returns a list of sentences" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
