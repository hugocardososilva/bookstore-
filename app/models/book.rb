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

  scope :by_title, ->(term) { where(title: /#{term}/i) }
  scope :by_author, ->(term) { where(:author_id.in => Author.by_name(term).pluck(:_id)) }
  scope :active, ->{ where( active: true ) }

  def self.search(search)
    if search
      book =
      book = Book.by_title(search)
      book += Book.by_author(search)
      book.uniq
    else
      Book.all
    end
  end


end
