class Book < MongoidDocument
  field :title, type: String
  field :description, type: String
  field :active, type: Mongoid::Boolean

  belongs_to :author
  has_many :images, dependent: :destroy

  validates :title, presence: true

  accepts_nested_attributes_for :images, :author

end
