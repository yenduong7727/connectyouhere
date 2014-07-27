namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    # make_microposts
    # make_relationships
    make_jobs
    make_accomodations
  end
end

def make_users
  admin = User.create!(name:     "Example User",
   email:    "kevin@yahoo.com",
   password: "foobar",
   password_confirmation: "foobar",
   admin: true)
  # 99.times do |n|
  #   name  = Faker::Name.name
  #   email = "example-#{n+1}@railstutorial.org"
  #   password  = "password"
  #   User.create!(name:     name,
  #    email:    email,
  #    password: password,
  #    password_confirmation: password)
  # end
end

def make_accomodations
  user = User.find(1)
   50.times do
    user.accomodations.create!(roomtype: "Own room",
    location: "Sydney",
    description: "looking for indo flatmate,
Bill Included ( Internet, Gas, Electricity ), Pay NO MORE than $370.

For Your:
OWN Fully Furnished Room.
OWN Keys

Very Clean & Convenience place,
Extra Outstanding view.
No OVERCROWDING!

Contact me:
Steven - 0425958800",
    price: 300,
    bond: 600,
    available: "12-7-2014",
    smoking: false,
    contact_phone: 0404123456,
    contact_name: "Kevin",
    Imagelink1: "https://img.flatmates.com.au/img/places/large/-392628.jpg")
    end
end

def make_jobs
  user = User.find(1)
   30.times do
    user.jobs.create!(employer: "Kevin Aditya",
    role: "Developer",
    description: "we are looking for genius developer who can count 1 to 10",
    criteria: "phd of mathematics",
    salary: 30000,
    salary_type: "Anually",
    closed_date: "12-9-2014",
    category: "Full-time",
    apply: "this is how you apply",
    location: "Sydney",
    classification: "Information Technology")
    end
end
