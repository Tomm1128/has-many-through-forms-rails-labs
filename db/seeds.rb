# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Users
user1 = User.create!(username: 'RealBigFish', email: 'real@example.com')
user2 = User.create!(username: 'JaneDoe', email: 'jane@example.com')
user3 = User.create!(username: 'JohnSmith', email: 'john@example.com')

# Create Categories
category1 = Category.create!(name: 'Tech')
category2 = Category.create!(name: 'Lifestyle')
category3 = Category.create!(name: 'Food')

# Create Posts
post1 = Post.create!(title: 'So Awesome', content: 'Man am I a great blogger OR WHAT!')
post2 = Post.create!(title: 'My Tech Journey', content: 'Tech is evolving so fast, and I am keeping up!')
post3 = Post.create!(title: 'Healthy Eating', content: 'Eating healthy is crucial for a happy life.')

# Create Post Categories
PostCategory.create!(post: post1, category: category1)
PostCategory.create!(post: post2, category: category2)
PostCategory.create!(post: post3, category: category3)
PostCategory.create!(post: post1, category: category2) # Adding another category to the same post

# Create Comments
Comment.create!(content: 'Great post!', user: user1, post: post1)
Comment.create!(content: 'I totally agree!', user: user2, post: post1)
Comment.create!(content: 'Interesting read.', user: user3, post: post2)
Comment.create!(content: 'Loved it!', user: user1, post: post3)
Comment.create!(content: 'Could use more detail.', user: user2, post: post3)
