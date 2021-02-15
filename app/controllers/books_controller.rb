class BooksController < InheritedResources::Base


  private

    def book_params
      params.require(:book).permit(:title, :description, :active, :author_id)
    end

end
