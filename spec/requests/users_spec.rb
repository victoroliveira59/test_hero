# Teste usado para testar uma API
# É apenas uma base padrão para testes
#  O User esta simbolizando uma URL
require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
end
