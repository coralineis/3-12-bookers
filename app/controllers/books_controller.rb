class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(book.id)
    end
  end

  def index
    @book = Book.new
    @books = Book.all.order(id: "DESC")
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(book.id)
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      flash[:notice] = "Book was successfully updated."
      redirect_to '/books'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
