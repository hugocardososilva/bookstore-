class BooksController < InheritedResources::Base

  private

    def book_params
      params.require(:book).permit(:title, :description, :active)
    end

end
