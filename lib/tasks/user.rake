task gen_users: :environment do

  User.create!(name: "Shane", email: "web@cd2solutions.co.uk", password: "drowssap", password_confirmation: "drowssap", admin: true )
  User.create!(name: "RS", email: "info@ringlandswan.co.uk", password: "5wan*39", password_confirmation: "5wan*39", admin: true )

end