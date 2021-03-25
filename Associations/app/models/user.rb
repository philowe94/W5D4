class User < ApplicationRecord

    #enrollments
    has_many(
        :enrollments,
        class_name: 'Enrollment',
        foreign_key: :student_id,
        primary_key: :id
    )

    #enrolled courses
    has_many :enrolled_courses, through: :enrollments, source: :course
end
