class Teller
	# def deposit(amount)
	# 	balance = amount
	# end
	def initialize(cash_slot)
	   @cash_slot = cash_slot
	end
	def withdraw_from(account, amount)
		account.debit(amount)
		@cash_slot.dispense(amount)
	end
end