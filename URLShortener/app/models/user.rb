class User < ApplicationRecord


    has_many(
        :visits,
        class_name: 'Visit',
        foreign_key: :user_id,
        primary_key: :id
    )

    has_many :visited_urls, through: :visits, source: :shortened_url

    validates :email, presence: true, uniqueness: true

end

