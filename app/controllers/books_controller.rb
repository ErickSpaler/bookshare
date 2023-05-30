class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to book_path(@book), notice: 'Livro adicionado com sucesso'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_name, :published_year, :genre, :description)
  end
end
