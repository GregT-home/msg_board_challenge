# Create a "starter" account to aid development debugging
STARTER_PASSWORD ||= ENV['STARTER_PASSWORD']
User.create!(
  name: "Happy User",
  email: "happy@user.com",
  password: STARTER_PASSWORD,
  password_confirmation: STARTER_PASSWORD )

User.last.postings.create!( content: "My very first seeded posting" )
