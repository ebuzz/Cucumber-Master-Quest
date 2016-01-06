# encoding: utf-8

Given(/^Given my account has been credited with (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
	# my_account = Account.new
	my_account.credit(amount)
end

When(/^I withdraw (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  # teller = Teller.new(cash_slot)
  teller.withdraw_from(my_account,amount)
end

Then(/^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/) do |amount|
  cash_slot.contents.should == amount
end

Then(/^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  my_account.balance.should eq(amount)
end
