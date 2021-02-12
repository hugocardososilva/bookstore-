class Book
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String
  field :active, type: Mongoid::Boolean

  belongs_to :author
  has_many :images, inverse_of: :book

  validates :title, presence: true

  accepts_nested_attributes_for :images, allow_destroy: true

end
