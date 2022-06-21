class BookCommentsController < ApplicationController
before_action :ensure_correct_user, only: [:destroy]

def create
    book = Book.find(params[:Book_id])
    comment = current_user.post_comments.new(Book_params)
    comment.book_id = book.id
    comment.save
    redirect_back(fallback_location: root_path)
end

def destroy
    book = Book.find(params[:Book_id])
    comment = current_user.post_comments.new(Book_params)
    comment.book_id = book.id
    comment.delete
    redirect_back(fallback_location: root_path)
end


end
