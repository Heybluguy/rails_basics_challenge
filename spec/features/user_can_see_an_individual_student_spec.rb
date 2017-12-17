require "rails_helper"

describe "user can see single student" do
  scenario "i can see an inividual student" do
    student = Student.create(name: "luis")

    visit "/students/#{student.id}"

    expect(page).to  have_content("luis")
  end
end





# User Can See an Individual Student
# As a user
# When I visit /students/:id
# I see the name of a student
