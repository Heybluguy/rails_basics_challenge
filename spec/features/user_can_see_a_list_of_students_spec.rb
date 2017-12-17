require 'rails_helper'

  describe "as a user" do
    scenario "i can see a list of students" do
      student_1 = Student.create(name: "luis")
      student_2 = Student.create(name: "elle")
      visit "/students"

      expect(current_path).to eq(students_path)
      expect(page).to have_content("Students")
      expect(page).to have_content("luis")
      expect(page).to have_content("elle")
    end
  end


