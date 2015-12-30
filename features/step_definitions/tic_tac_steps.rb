Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  @board = table.raw
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
  puts @board # Write code here that turns the phrase above into concrete actions
  row, col = row.to_i, col.to_i
  @board[row][col] = "x"
end

Then(/^the board should look like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.diff!(@board)
end