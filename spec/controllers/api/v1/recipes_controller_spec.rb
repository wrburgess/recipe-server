require_relative '../../../spec_helper'

describe Api::V1::RecipesController do

  before do
    FactoryGirl.create(:recipe)
  end

  it 'should get show' do
    get :show, id: Recipe.first.id, format: :json
    response.should be_success
  end

  it 'should get index' do
    get :index, format: :json
    response.should be_success
  end

end