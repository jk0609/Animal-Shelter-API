require 'rails_helper'
describe 'show all pets data', :type=>:request do

  let!(:pets) { FactoryGirl.create_list(:pet, 20)}
  before {
    get '/pets/'
  }

  it 'returns all pets data' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
