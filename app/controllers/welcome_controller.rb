class WelcomeController < ApplicationController
  def index
    @instructors = Instructor.count
    @lessons = Lesson.count
    @classes = DanceClass.count
  end
end
