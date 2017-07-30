require 'random_data'

# # Create posts
# 50.times do
#   Post.create!(
#     title: RandomData.random_sentence,
#     body: RandomData.random_paragraph
#   )
# end
#
# posts = Post.all
#
# # Create comments
# 100.times do
#   Comment.create!(
#     post: posts.sample,
#     body: RandomData.random_paragraph
#   )
# end

# Create ads
50.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_number
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"
