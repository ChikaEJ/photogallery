# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create(name: "admin", email: 'admin@admin.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)
user = User.create(name: 'user', email: 'user@user.com', password: 'useruser', password_confirmation: 'useruser', admin: false)

fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

image_1 = Picture.create(title: 'Image_first', user_id: 1)
image_1.image = (fixtures_path.join('image_1.jpg')).open
image_1.save!

image_2 = Picture.create(title: 'Image_second', user_id: 1)
image_2.image = (fixtures_path.join('image_2.jpg')).open
image_2.save!

image_3 = Picture.create(title: 'Image_third', user_id: 2)
image_3.image = (fixtures_path.join('image_3.jpg')).open
image_3.save!

image_4 = Picture.create(title: 'Image_fourth', user_id: 2)
image_4.image = (fixtures_path.join('image_4.jpg')).open
image_4.save!

comment = Comment.create(user_id: 1, picture_id: 1, text: 'the best image!', raiting: 4)
comment2 = Comment.create(user_id: 2, picture_id: 2, text: 'the purest image!', raiting: 2)
comment = Comment.create(user_id: 1, picture_id: 2, text: 'Some text of comment', raiting: 5)