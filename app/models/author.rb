class Author < MongoidDocument
  field :name, type: String
  field :email, type: String

  has_many :books
end
