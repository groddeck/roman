require_relative '../roman'

describe Fixnum do

  describe '#to_roman' do
    it 'returns the correct roman numeral for an integer' do
      examples = {
        1 => 'I',
	2 => 'II',
	3 => 'III',
	4 => 'IV',
	5 => 'V',
	6 => 'VI',
	7 => 'VII',
	8 => 'VIII',
	9 => 'IX',
	10 => 'X',
	11 => 'XI',
	14 => 'XIV',
	18 => 'XVIII',
	19 => 'XIX',
	41 => 'XLI',
	50 => 'L',
	3499 => 'MMMCDXCIX'
      }
      examples.each do |k, v|
	expect(k.to_roman).to eq v
      end
    end
  end
end
