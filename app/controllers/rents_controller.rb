class RentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @rent = Rent.new
    @rent.user = current_user
    @rent.book = @book
    @rent.save
    redirect_to rents_path
  end

  def index
    @rents = Rent.where(user: current_user)
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to rents_path
  end

end
