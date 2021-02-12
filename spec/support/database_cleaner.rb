require 'database_cleaner/mongoid'

RSpec.configure do |config|
  # Clean up the database
  config.before(:suite) do
    DatabaseCleaner[:mongoid].clean_with :deletion
  end

  config.before(:each) do
    DatabaseCleaner[:mongoid].strategy = :deletion
  end

  config.before(:each, :js => true) do
    DatabaseCleaner[:mongoid].strategy = :deletion
  end

  config.before(:each, :database) do
    # open transaction
    DatabaseCleaner[:mongoid].start
  end

  config.after(:each, :database) do
    DatabaseCleaner[:mongoid].clean
  end
end
