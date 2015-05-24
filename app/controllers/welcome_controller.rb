class WelcomeController < ApplicationController
  def index
    @instructors = Instructor.count
    @lessons = Lesson.count
  end
end
