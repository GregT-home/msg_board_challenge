# Create a "starter" account to aid development debugging
STARTER_PASSWORD ||= ENV['STARTER_PASSWORD']
user_names = %w[ Happy Silly Dopey Smart Wise Foolish Serious Foppish Brutish ]

user_names.each do |fname|
  begin
    User.create!(
      name: "#{fname} User",
      email: "#{fname}@user.com",
      password: STARTER_PASSWORD,
      password_confirmation: STARTER_PASSWORD )
  rescue => e
    STDERR.puts "Ignored: #{e.message} for '#{fname} User'"
  end
end

50.times do
  user = User.find(rand(User.count) + 1)
  user.postings.create!(
    # Up to 6 sentences of up to 8 random words, sometimes from supplemental dict
    content: Faker::Lorem.paragraph(rand(8)+1, [true,false].sample, 6) )
end
