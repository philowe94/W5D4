class Course < ApplicationRecord

    #enrollments
    has_many(
        :enrollments,
        class_name: 'Enrollment',
        foreign_key: :course_id,
        primary_key: :id
    )

    #users enrolled
    has_many :enrolled_students, through: :enrollments, source: :user

    #prerequisite
    belongs_to(
        :prerequisite,
        class_name: 'Course',
        foreign_key: :prereq_id,
        primary_key: :id
    )

    belongs_to(
        :instructor,
        class_name: 'User',
        foreign_key: :instructor_id,
        primary_key: :id
    )
end
