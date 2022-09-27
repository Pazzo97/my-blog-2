require 'rails_helper'

RSpec.describe 'Users pages test', type: :feature do
  describe 'index page' do
    before :each do
      @first_user = User.create(name: 'Pazzo', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                                bio: 'Teacher from Mexico')
      @second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                                 bio: 'A beautiful lady')
    end

    it 'check users#index path' do
      visit '/users/sign_in'
      expect(current_path).to eq('/users/sign_in')
    end
  end
end
