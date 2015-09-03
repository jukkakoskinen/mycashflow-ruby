# MyCashflow API

A work-in-progress Ruby client for the MyCashflow API.

Client API inspired by: [https://github.com/amro/gibbon]

# Usage
```
gem install mycashflow
```
```
require 'mycashflow'

client = MyCashflow::Client.new({
    user: 'username',
    pass: 'password',
    base: 'https://myshop.com/api/v1'
  })

# Get all categories
client.categories.get

# Get category by ID
client.categories(1).get
```

**Things to do:**

1. Make it work perhaps?
2. Add caching
3. Write tests
