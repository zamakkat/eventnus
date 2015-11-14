require 'rails_helper'

describe OauthAccount do
  context 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  # context 'delegates' do

  # end

  context 'validations' do

  end

  # context 'scope' do

  # end

  # context 'callbacks' do

  # end
end
