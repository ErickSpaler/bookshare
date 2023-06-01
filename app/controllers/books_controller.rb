class BooksController < ApplicationController
  skip_before_action :authenticate_user!,only:[:index, :show]
  def index
    if params[:genre].present?
      @books = Book.where(genre: params[:genre])
    else
      @books = Book.all
    end
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to books_path, notice: 'Livro adicionado com sucesso'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def my_titles
    @books = Book.where(user: current_user)
  end
  def show
    @book = Book.find(params[:id])
    @rent = Rent.new
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to my_titles_books_path
  end
  private
  def book_params
    params.require(:book).permit(:title, :author_name, :published_year, :genre, :description, :image)
  end
end
