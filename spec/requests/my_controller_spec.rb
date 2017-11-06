require 'spec_helper'

RSpec.describe MyController, type: :request do
  describe 'GET /' do
    let(:path) { '/' }

    it 'is successful' do
      get path
      expect(last_response.successful?).to eql true
    end
  end
end
