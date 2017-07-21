require 'rails_helper'
describe 'show one pet data', :type=>:request do

  before {
    @pet = FactoryGirl.create(:pet)
    get '/pets/'+@pet.id.to_s
  }

  it 'returns pet data' do
    expect(JSON.parse(response.body)['name']).to eq(@pet.name)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
