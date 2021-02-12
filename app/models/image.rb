class Image
  include Mongoid::Document

  field :title, type: String
  mount_uploader :image, ImageUploader

  belongs_to :book, inverse_of: :images
end
