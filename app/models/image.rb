class Image < MongoidDocument
  field :title, type: String
  field :upload, type: String

  belongs_to :book
end
