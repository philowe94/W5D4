class ShortenedUrl < ApplicationRecord

    has_many(
        :visits,
        class_name: 'Visit',
        foreign_key: :shortened_url_id,
        primary_key: :id
    )

    has_many :visitors, through: :visits, source: :user

    validates :long_url, presence: true
    validates :short_url, presence: true, uniqueness: true
    validates :user_id, presence: true

    def num_clicks
        #return number of visits
        return self.visits.length
    end

    def num_uniques
        #number of distinct visitors
        arr = []

        self.visits.each do |visit|
            arr << visit.user_id
        end
        return arr.uniq.length
    end

    

end
