class CreateBucketItems < ActiveRecord::Migration
  def change
    create_table :bucket_items do |t|
      t.string :content
      t.references :bucket_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
