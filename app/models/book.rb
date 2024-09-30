class Book
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :isbn, type: String

  validates :title, presence: true

  belongs_to :author, class_name: 'Author'
end
