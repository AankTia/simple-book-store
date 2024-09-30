require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'Attribute Data Validation' do
    it 'Valid Values' do
      Author.delete_all
      author = Author.new(name: 'Author Name')
      expect(author.valid?).to eq(true)
    end

    it 'Invalid Values' do
      Author.delete_all
      author = Author.new
      expect(author.valid?).to eq(false)
    end
  end
end
