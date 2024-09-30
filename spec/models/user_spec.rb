require 'rails_helper'
require 'pry'

RSpec.describe 'User validations', type: :model do
  context 'Valid User Data' do  # (almost) plain English
    it 'Valid Values' do
      User.delete_all
      user = User.new(first_name: 'Tia', last_name: 'Widi', email: 'tia.septianawidi@gmail.com')
      expect(user.valid?).to eq(true)
    end
  end
  context 'Invalid User Data' do
    it 'Empty First Name' do
      User.delete_all
      user = User.new(first_name: nil, last_name: 'Widi', email: 'tia.septianawidi@gmail.com')
      expect(user.valid?).to eq(false)
    end

    it 'Empty Last Name' do
      User.delete_all
      user = User.new(first_name: 'Tia', last_name: nil, email: 'tia.septianawidi@gmail.com')
      expect(user.valid?).to eq(false)
    end

    it 'Empty Email' do
      User.delete_all
      user = User.new(first_name: 'Tia', last_name: 'Widi')
      expect(user.valid?).to eq(false)
    end

    it 'Invalid Email value' do
      User.delete_all
      user = User.new(first_name: 'Tia', last_name: 'Widi', email: 'tia.septianawidi_gmail.com')
      expect(user.valid?).to eq(false)
    end

    it 'Duplicate Email' do
      User.delete_all
      User.new(first_name: 'Tia', last_name: 'Widi', email: 'tia.septianawidi@gmail.com').save
      user = User.new(first_name: 'Tia2', last_name: 'Widi2', email: 'tia.septianawidi@gmail.com')
      expect(user.valid?).to eq(false)
    end
  end
end
