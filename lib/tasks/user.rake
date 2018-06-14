namespace :user do
  desc "Create Hafuru User"
  task create_hafuru: :environment do
    User.create(id: 1000, username: "Hafuru", email: "hafuru@hafuru.com", password:  "topsecret", password_confirmation: "topsecret")
  end

end
