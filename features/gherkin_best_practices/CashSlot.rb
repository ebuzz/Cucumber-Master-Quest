class CashSlot
	def contents
		@contents or raise('Empty')
	end
	def dispense(amount)
		@contents = amount
	end
end