# Rinothread

Queue and limit concurrent threads

## Installation

Add this line to your application's Gemfile:

    gem 'rinothread'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rinothread

## Usage

```ruby
require 'rinothread'

# Declare the queue, and number of concurrent threads allowed
concurrent_thread_limit = 5
rino = Rino::Tusk.new(concurrent_thread_limit)

100.times do |i|

    # Add items to queue
    rino.queue do

        sleep(0.5)
        puts %{Action ##{(i+1)}\n}

    end

end

# rino WILL NOT execute until this method is called
rino.execute
```