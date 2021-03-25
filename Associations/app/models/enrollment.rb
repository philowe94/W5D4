class Enrollment < ApplicationRecord
    # this is a joins table

    #course can have many students(Users)
    #student can have many courses(Courses)

    #An enrollment belongs to one student and one course

    #students (Users)
    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: :student_id,
        primary_key: :id
    )

    #courses (Course)
    belongs_to(
        :course,
        class_name: 'Course',
        foreign_key: :course_id,
        primary_key: :id
    )
end
