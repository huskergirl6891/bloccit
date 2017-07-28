require 'random_data'

# # Create posts
# 1.times do
#   Post.create!(
#     title: RandomData.random_sentence,
#     body: RandomData.random_paragraph
#   )
# end
#
# posts = Post.all
#
# # Create comments
# 1.times do
#   Comment.create!(
#     post: posts.sample,
#     body: RandomData.random_paragraph
#   )
# end

# Create unique post
unique_post = Post.find_or_create_by!(
  title: "Unique Title",
  body: "Unique Body"
)


# Create unique comment related to unique post
Comment.find_or_create_by!(
  post: unique_post,
  body: "Unique Comment Body"
)


puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
