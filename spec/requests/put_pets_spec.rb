require 'rails_helper'
describe 'update pet', :type=>:request do

  before {
    @pet = FactoryGirl.create(:pet)
    put '/pets/'+@pet.id.to_s+'?name=TestCat'
  }

  it 'returns the pet name' do
    expect(JSON.parse(response.body)['name']).to eq('TestCat')
  end

  it 'returns accepted status' do
    expect(response).to have_http_status(:accepted)
  end
end
