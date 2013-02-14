class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create(params[:book])
    redirect_to(book)
  end

  def edit
    @book = Book.find(params[:id])
    render 'edit'
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update_attributes(params[:book])
    redirect_to(book)
  end

  def destroy
  end

end

