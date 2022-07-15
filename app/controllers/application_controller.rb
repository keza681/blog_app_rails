class ApplicationController < ActionController::Base
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :posts
  after_save :update_comments_counter

  def update_comments_counter
    post.increment!(:comments_counter)
  end
end
