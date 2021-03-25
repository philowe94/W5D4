class Visit < ApplicationRecord

    #Each visit belongs to a user
    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: :user_id,
        primary_key: :id
    )

    #Each visit belongs to a shortened url
    belongs_to(
        :shortened_url,
        class_name: 'ShortenedUrl',
        foreign_key: :shortened_url_id,
        primary_key: :id
    )

    validates :shortened_url_id, presence: true
    validates :user_id, presence: true
    
    def self.record_visit!(user, shortened_url)
        visit = Visit.new(user_id: user.id, shortened_url_id: shortened_url.id)
        visit.save!
    end
end