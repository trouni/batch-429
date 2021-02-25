def valid?(phone_number)
  # phone_number.delete('- ').length == 11 &&
  #   phone_number.chars.all? { |digit_string| digit_string == digit_string.to_i.to_s } &&
  #   # Check the country code
  #   # check the optional (0)
  #   # ...
  phone_number.match?(/^(0|\+81)(\(0\))?([\s-]?\d{2}){5}$/)
end

phone_numbers = {
  "07012345678" => true,
  "070 12 34 56 78" => true,
  "070-1234-5678" => true,
  "+81-70-1234-5678" => true,
  "+81(0)70-1234-5678" => true,
  "070123456789" => false,
  "17012345678" => false,
  "0701234567w" => false
}

phone_numbers.each do |phone_number, expected|
  actual = valid?(phone_number)
  print actual == expected ? '✅' : '❌'
  print " #{phone_number} seems to be "
  puts actual ? 'VALID' : 'INVALID'
end
