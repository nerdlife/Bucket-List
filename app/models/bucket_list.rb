class BucketList < ActiveRecord::Base

    has_many :bucket_items, dependent: :destroy
    
end
