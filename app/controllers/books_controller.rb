class BooksController < InheritedResources::Base
  respond_to :json

  def index
   @current_page = params[:page]
   @books = Book.search(params[:search]).page(@current_page).per(3)
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :active, :author_id, :search)
  end

end
