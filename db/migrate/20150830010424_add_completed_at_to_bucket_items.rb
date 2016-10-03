class AddCompletedAtToBucketItems < ActiveRecord::Migration
    
    def change
        add_column :bucket_items, :completed_at, :datetime
    end

end
