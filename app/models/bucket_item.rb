class BucketItem < ActiveRecord::Base
    belongs_to :bucket_list

    def completed?
        !completed_at.blank?
    end





end
