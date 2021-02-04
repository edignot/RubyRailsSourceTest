require 'segment/analytics'

Analytics = Segment::Analytics.new({ 
  write_key: 'WO2NE7Bl9kwlPOMXAiakciAEVGLitCnh', 
  on_error: Proc.new { |status, msg| print msg } 
})

Analytics.identify( 
  user_id: 'test-user-id-11', 
  traits: { 
    email: 'test@mail.com', 
    first_name: 'Name', 
    last_name: 'Last Name' 
  } 
)
  
Analytics.track( 
  user_id: 'test-user-id-11', 
  event: 'Item Purchased', 
  properties: { 
    revenue: 39.95, 
    shipping: '2-day'
  }
)

Analytics.track( 
  user_id: 'test-user-id-11', 
  event: 'Event Filtered', 
  properties: { 
    revenue: 39.95, 
    shipping: '2-day'
  }
)

Analytics.page(
  user_id: '123',
  category: 'Docs',
  name: 'Ruby library',
  properties: { url: 'https://segment.com/libraries/ruby/' }
)

Analytics.screen(
  user_id: '123',
  category: 'Docs',
  name: 'Ruby library',
  properties: { url: 'https://segment.com/libraries/ruby/' }
)