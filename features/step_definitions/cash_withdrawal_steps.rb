# encoding: utf-8

Given(/^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my super account$/) do |amount|
	# my_account = Account.new
	my_account.deposit(amount)
	my_account.balance.should eq(amount) , "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When(/^I withdraw (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  # teller = Teller.new(cash_slot)
  teller.withdraw_from(my_account,amount)
end

Then(/^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/) do |amount|
  cash_slot.contents.should == amount
end
