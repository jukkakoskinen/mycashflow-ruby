# MyCashflow API

A work-in-progress Ruby client for the MyCashflow API.

Client API inspired by: [https://github.com/amro/gibbon]

# Usage
```
gem install mycashflow
```
```
require 'mycashflow'

# Initialize the client
client = MyCashflow::Client.new({
    base_url: 'https://myshop.com/api/v1',
    username: 'username',
    password: 'password'
  })

# Get all categories
client.categories.get

# Get category by ID
client.categories(1).get

# Get category's subcategories
client.categories(1).subcategories.get
```

**Things to do:**

1. Make it work perhaps?
2. Add caching
3. Write tests
