class StringCalculator
  def sum(number_string)
    delimters = [',', '/', ';']
    number_integer_array = number_string.strip.split(Regexp.union(delimters)).map(&:to_i)
    return 0 if number_string == '' || !(number_string =~ /\d/)

    raise 'Negative Numbers are not allowed' if number_integer_array.any?(&:negative?)

    result = number_integer_array.sum
  end
end
