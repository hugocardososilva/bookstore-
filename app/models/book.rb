class Book < MongoidDocument
  field :title, type: String
  field :description, type: String
  field :active, type: Mongoid::Boolean

  validates :title, presence: true
end
