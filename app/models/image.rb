class Image
  include Mongoid::Document

  field :title, type: String
  field :url, type: String


  belongs_to :book, inverse_of: :images
end
