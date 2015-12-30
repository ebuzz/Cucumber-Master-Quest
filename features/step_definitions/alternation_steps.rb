Given(/^I have deposited \$(100|250) in my account$/) do |amount|
	@amount = amount
end

Given(/^(?:the|a) flight (\w+) is leaving today$/) do |arg1|
	@arg1 = arg1
end

When(/^I transfer \$(\d+) from my (\w+) Account into my (\w+) Account$/) do |money,sender,receiver|
  print money
end

Given(/^I have authenticated with the correct PIN$/) do
steps %{
And I have pushed my card into the slot
And I enter my PIN
And I press "OK"
}
end
