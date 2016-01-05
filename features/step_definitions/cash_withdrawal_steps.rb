# encoding: utf-8

# CAPTURE_CASH_AMOUNT = Transform(/^(£|\$|€)(\d+)$/) do |currency_symbol, amount|
# Currency::Money.new(amount, currency_symbol)
# end

CAPTURE_CASH_AMOUNT = Transform(/^\$(\d+)$/) do |amount|
amount.to_i
end

Given(/^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my super account$/) do |amount|
	my_account = Account.new
	my_account.deposit(amount)
	my_account.balance.should eq(amount) , "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When(/^I withdraw (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  teller = Teller.new
  teller.withdraw_from(my_account,amount)
end

Then(/^\$(\d+) should be dispensed$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
