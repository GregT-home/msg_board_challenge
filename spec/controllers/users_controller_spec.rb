require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show :id" do
    it "returns http redirect" do
      user = FactoryGirl.create(:user)

      get :show, params: { id: user.id }
      expect(response).to have_http_status(:redirect)
      user.destroy!
    end
  end

end
