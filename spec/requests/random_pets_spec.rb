require 'rails_helper'
describe 'return a random pet', :type=>:request do

  before {
    @pet = FactoryGirl.create(:pet)
    get '/random'
  }

  it 'returns the random pet json object' do
    expect(JSON.parse(response.body).size()).to eq(7)
  end

  it 'returns 200 status' do
    expect(response).to have_http_status(:success)
  end
end
