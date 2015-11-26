# MyCashflow API

https://rubygems.org/gems/mycashflow

A work-in-progress Ruby client for the MyCashflow API.

Client API inspired by [Gibbon](https://github.com/amro/gibbon).

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

1. Add caching
2. Write tests
