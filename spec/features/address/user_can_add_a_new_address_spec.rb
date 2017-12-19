require 'rails_helper'

describe "as a user" do
  context "when i visit a new address form for student" do
    it "takes me to student homepage and and i see the new address" do
      student = Student.create(name: "luis")

      visit "/students/#{student.id}/addresses/new"

      fill_in "Description", with: "Summer Address"
      fill_in "Street", with: "8240 rose rd"
      fill_in "City", with: "orlando"
      fill_in "State", with: "Florida"
      fill_in "Zipcode", with: "32818"

      click_on "Create Address"

      expect(current_path).to eq(student_path(student))
      expect(student.addresses.count).to eq(1)
    end
  end
end

# Creating a New Address
# As a user
# When I visit /students/:id/addresses/new
# And I fill in description with a description (e.g. “Summer Address”)
# And I fill in street with a street address
# And I fill in city with a city
# And I fill in state with a state
# And I fill in zip code with a zip code
# And I click submit
# I am taken to that student’s show page
# And I see the description, street, city, state, and zip on that page
