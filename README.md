# poro-rails

This gem provides generators of **Plain Old Ruby Objects**, **Form Objects** and **Service Objects** for Ruby on Rails.

## Installation

```ruby
gem 'poro-rails', group: :development
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install poro-rails

## Usage

### Plain Old Ruby Objects

Generate a plain old ruby object via command line:

    $ rails g poro Person
          create  app/models/person.rb
          invoke  test_unit
          create    test/models/person_test.rb

These files are created (if it use RSpec in your project, it creates a spec file):

```ruby
# app/models/person.rb
class Person
  # include ActiveModel::Model
end
```

```ruby
# test/models/person_test.rb
require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
```

### Form Objects

Generate a form object via command line:

    $ rails g form create_user
          create  app/forms/create_user_form.rb
          invoke  test_unit
          create    test/forms/create_user_form_test.rb

These files are created (if it use RSpec in your project, it creates a spec file):

```ruby
# app/forms/create_user_form.rb
class CreateUserForm
  # include ActiveModel::Model
end
```

```ruby
# test/forms/create_user_form_test.rb
require 'test_helper'

class CreateUserFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
```

### Service Objects

Generate a service object via command line:

    $ bin/rails g service create_payment
          create  app/services/create_payment_service.rb
          invoke  test_unit
          create    test/services/create_payment_service_test.rb

These files are created (if it use RSpec in your project, it creates a spec file):

```ruby
# app/services/create_payment_service.rb
class CreatePaymentService
  # include ActiveModel::Model
end
```

```ruby
# test/services/create_payment_service_test.rb
require 'test_helper'

class CreatePaymentServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
```

## License

MIT
