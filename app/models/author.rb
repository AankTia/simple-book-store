class Author
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  validates :name, presence: true

  has_many :books, class_name: 'Book'
end
