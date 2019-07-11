20.times do
  user = User.create name: FFaker::Name.name, email: FFaker::Internet.email

  10.times do
    user.posts.create title: FFaker::Lorem.sentence, content: FFaker::Lorem.paragraphs.join
  end
end
