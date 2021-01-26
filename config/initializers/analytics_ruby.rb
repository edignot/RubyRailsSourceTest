require 'segment/analytics'

Analytics = Segment::Analytics.new({ 
  write_key: 'rJN2Jd5Y4i5Xpv8ZR0GOYnd1NA4wlQah', 
  on_error: Proc.new { |status, msg| print msg } 
})

Analytics.identify( 
  user_id: 'test-user-id-1', 
  traits: { 
    email: 'test@mail.com', 
    first_name: 'Name', 
    last_name: 'Last Name' 
  } 
)
  
Analytics.track( 
  user_id: 'test-user-id-1', 
  event: 'Item Purchased', 
  properties: { 
    revenue: 39.95, 
    shipping: '2-day'
  }
)

Analytics.page(
  category: 'Docs',
  name: 'Ruby library',
  properties: { 
    url: 'https://segment.com/libraries/ruby/' 
  }
)