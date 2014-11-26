class Fixnum
  ROMAN_CHARS = [["I","V"], ["X","L"], ["C","D"], ["M","?"]]

  def to_roman(power=0)
    return "?" if self < 0 or !self.integer? or self > 3999
    return "" if self.zero?
    digit = self % 10
    om = ROMAN_CHARS[power]
    current = case digit
    when 0..3
      om.first*digit
    when 5
      om[1]
    when 4..8
      diff = (digit - 5)
      arry = diff > 0 ? [5,diff] : [1,5]
      arry.map{|d| d.to_roman(power)}.inject(:+)
    else
      [1,10].map{|d| d.to_roman(power)}.inject(:+)
    end
    (self/10).to_roman(power+1) + current
  end
end
