class Author
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :email, type: String

  validates :name, presence: true

  has_many :books



end
