# CAPTURE_CASH_AMOUNT = Transform(/^(£|\$|€)(\d+)$/) do |currency_symbol, amount|
# Currency::Money.new(amount, currency_symbol)
# end

CAPTURE_CASH_AMOUNT = Transform(/^\$(\d+)$/) do |amount|
amount.to_i
end