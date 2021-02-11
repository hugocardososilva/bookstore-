class Author < MongoidDocument
  field :name, type: String
  field :email, type: String

  validates :name, presence: true

  has_many :books



end
