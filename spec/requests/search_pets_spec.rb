require 'rails_helper'
describe 'search for a pet based on name', :type=>:request do

  before {
    @pet = FactoryGirl.create(:pet)
  }

  it 'returns found pet data' do
    get '/search?name='+@pet.name
    expect(JSON.parse(response.body)[0]['name']).to eq('TestPet')
  end

  it 'returns status code 200' do
    get '/search?name='+@pet.name
    expect(response).to have_http_status(:success)
  end

  it 'returns error message when no pet found' do
    get '/search?name=test'
    expect(JSON.parse(response.body)['message']).to eq('No pet was found with that name.')
  end

  it 'returns error message when no search params entered' do
    get '/search'
    expect(JSON.parse(response.body)['message']).to eq("Please enter a name as a parameter.")
  end
end
