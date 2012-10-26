# REST Segment

A simple api wrapper for http://segment.io/ (Web analytics with radically improved user segmentation.)

Find the api docs here: https://segment.io/docs/rest-api

## Installation

Add this line to your application's Gemfile:

    gem 'rest-segment'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rest-segment

## Usage

```ruby

api = Segment::API.new('YOUR_API_KEY_GOES_HERE')

api.identify userId: "me@florianguenther.com", traits: {
	"Attractiveness" : "high",
	"Age" : 28
}

api.track userId: "me@florianguenther.com", event: "Upgraded Account", properties: {
	"plan" : "pro"
}

````

Read the segment.io api docs for more information: https://segment.io/docs/rest-api

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
