
require 'rails_helper'
describe 'add pet', :type=>:request do

  before {
    post '/pets', params: {
      name: 'TestCat',
      species: 'Cat',
      breed: 'ABreed',
      age: 500
    }
  }

  it 'returns the pet name' do
    expect(JSON.parse(response.body)['name']).to eq('TestCat')
  end

  it 'returns the pet species' do
    expect(JSON.parse(response.body)['species']).to eq('Cat')
  end

  it 'returns the pet breed' do
    expect(JSON.parse(response.body)['breed']).to eq('ABreed')
  end

  it 'returns the pet age' do
    expect(JSON.parse(response.body)['age']).to eq(500)
  end

  it 'returns created status' do
    expect(response).to have_http_status(:created)
  end
end
