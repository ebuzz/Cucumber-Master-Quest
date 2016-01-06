require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'Account')
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'Teller')
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'CashSlot')
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'init')

require 'capybara/cucumber'
Capybara.app = Sinatra::Application
Sinatra::Application.set :enviroment, :test
