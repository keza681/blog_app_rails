# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create(name: 'Tommy', photo: 'https://www.istockphoto.com/vector/businessman-icon-vector-symbol-for-web-flat-design-gm1390193778-447241583', bio: 'Driver from Tunisia.', posts_counter: 0)
# User.create(name: 'Sillia', photo: 'https://www.istockphoto.com/vector/businessman-avatar-icon-gm1298227218-391128738', bio: 'Doctor from Egypt', posts_counter: 0)
# User.create(name: 'Linda', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Morocco.', posts_counter: 0)
# User.create(name: 'Mike', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Engineer from Algeria', posts_counter: 0)
# User.create(name: 'Selma', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', email: 'selma@gmail.com', password: 'selma123')
# rails generate migration add_role_to_users role:string,
Post.create(title: 'Hello Keza', text: 'This is my first post for Keza.', user_id: 6)
Post.create(title: 'Hey Keza', text: 'This is my second post for Keza.', user_id: 6)

Post.create(title: 'Hello Linda', text: 'This is my first post for Linda.', user_id: 4)
# Post.create(title: 'Hello Linda', text: 'This is my first post for Linda.', user_id: 4)
Comment.create(text: 'This is my first comment for Linda.', user_id: 1, post_id: 1)
# token for Ben: "eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MSwiZXhwIjoxNjYzNzU2NDk2fQ.r00hXibfrqi_b_IFm2gNiZRcoNE3xcvKZARQZqdsQlg"
# alfred : "eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwiZXhwIjoxNjYzNzU4Mjg2fQ.ZxCNYuBEGpTUWOUWaJwY4axmElFIYLmHhrPVk2Ob0o8"

Post.create(title: 'Hey Ben', text: 'This is my first post for Ben.', user_id: 1)
Post.create(title: 'Hey Alfred', text: 'This is my first post for Alfred.', user_id: 2)