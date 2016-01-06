Before('@cuentahabiente') do
puts "Este es cuentahabiente!"
end

Before do
puts "Go!"
end

After do
puts "Stop!"
end