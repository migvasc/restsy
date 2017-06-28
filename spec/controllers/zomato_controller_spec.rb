require 'rails_helper'

RSpec.describe ZomatoController, type: :controller do

  describe "GET #buscar" do
    it "returns http success" do
      get :buscar
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #listar" do
    it "returns http success" do
      get :listar
      expect(response).to have_http_status(:success)
    end
  end

end
