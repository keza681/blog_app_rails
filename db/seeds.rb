# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!([
    {name: "Tom", photo: "https://unsplash.com/photos/F_-0BxGuVvo", bio: "Teacher from Mexico.", posts_counter: 4},
    {name: "Lilly", photo: "https://unsplash.com/photos/F_-0BxGuVvo", bio: "Teacher from Poland.", posts_counter: nil}
  ])

  Post.create!([
  {author: User.first,title: "Hello2", text: "This is my second post", comments_counter: nil, likes_counter: nil },
  {author: User.first, title: "Hello3", text: "This is my Third post", comments_counter: nil, likes_counter: nil },
  {author: User.find(2),title: "Hello4", text: "This is my fourth post", comments_counter: nil, likes_counter: nil},
  {author: User.find(2),title: "Hello", text: "This is my first post", comments_counter: nil, likes_counter: nil}
  ])

  Comment.create!([
    {author_id: 1, post_id: 2, text: "commemt1"},
    {author_id: 1, post_id: 2, text: "comment2"},
    {author_id: 1, post_id: 2, text: "comment3"},
    {author_id: 1, post_id: 2, text: "comment4"},
    {author_id: 1, post_id: 2, text: "comment5"},
    {author_id: 1, post_id: 2, text: "comment6"}
  ])