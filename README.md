# poro-rails

This gem provides generators of **Plain Old Ruby Object** (PORO), **Form Object** and **Service Object** for Ruby on Rails.

## Installation

```ruby
gem 'poro-rails', group: :development
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install poro-rails

## Usage

### Plain Old Ruby Object

Generate poro via command line:

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

# test/models/person_test.rb
require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
```

### Form Object

Generate poro via command line:

    $ rails g poro:form create_user
          create  app/forms/create_user_form.rb
          invoke  test_unit
          create    test/forms/create_user_form_test.rb

These files are created (if it use RSpec in your project, it creates a spec file):

```ruby
# app/forms/create_user_form.rb
class CreateUserForm
  # include ActiveModel::Model
end

# test/forms/create_user_form_test.rb
require 'test_helper'

class CreateUserFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
```

### Service Object

Generate poro via command line:

    $ bin/rails g poro:service create_payment
          create  app/services/create_payment_service.rb
          invoke  test_unit
          create    test/services/create_payment_service_test.rb

These files are created (if it use RSpec in your project, it creates a spec file):

```ruby
# app/services/create_payment_service.rb
class CreatePaymentService
  # include ActiveModel::Model
end

# test/services/create_payment_service_test.rb
require 'test_helper'

class CreatePaymentServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
```

## License

[MIT](https://opensource.org/licenses/MIT)
