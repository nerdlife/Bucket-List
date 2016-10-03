# 1st Seed List
BucketList.create([
    title: '1st Bucket List', 
    description: 'This is the first Bucket List Seed', 
    created_at: (rand*100).days.ago, 
    updated_at: (rand*10).days.ago
])

# 1st Seed Items
BucketItem.create([
    content: 'Learn Spanish', 
    bucket_list_id: 1,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago
])
BucketItem.create([
    content: 'Learn Chineese', 
    bucket_list_id: 1,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago,
    completed_at: (rand*1).days.ago
])
BucketItem.create([
    content: 'Learn English', 
    bucket_list_id: 1,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago
])
BucketItem.create([
    content: 'Learn Greek', 
    bucket_list_id: 1,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago,
    completed_at: (rand*1).days.ago
])




# 2nd Seed List 
BucketList.create([
    title: 'Second seed bucket list', 
    description: 'This is the 2nd Bucket List Seed', 
    created_at: (rand*100).days.ago, 
    updated_at: (rand*10).days.ago
])

# 2nd Seed Items 
BucketItem.create([
    content: 'Travel to Canada', 
    bucket_list_id: 2,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago
])
BucketItem.create([
    content: 'Travel to England', 
    bucket_list_id: 2,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago,
    completed_at: (rand*1).days.ago
])
BucketItem.create([
    content: 'Travel to Mexico', 
    bucket_list_id: 2,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago
])
BucketItem.create([
    content: 'Travel to Uraguay', 
    bucket_list_id: 2,
    created_at: (rand*3).days.ago, 
    updated_at: (rand*2).days.ago,
    completed_at: (rand*1).days.ago
])
