class Book
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :publication_year, type: Integer
  field :publisher, type: String

  validates :title, presence: true
  validates :publication_year, presence: true

  belongs_to :author, class_name: 'Author'
end
