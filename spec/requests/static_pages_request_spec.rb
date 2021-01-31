require 'rails_helper'

RSpec.describe StaticPagesController, type: :request do
  describe '#index' do
    it 'returns pokemon images' do
      VCR.use_cassette('poke_cassette') do
        get root_path

        expect(response.status).to eq(200)
        expect(response.body).to include('/PokeAPI/').at_least(:once)
      end
    end
  end
end
