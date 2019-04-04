describe Birthday do

  describe '#string_to_integer' do
    it 'convet month to integer' do
      date = Birthday.new(4, "April")
      expect(date.string_to_integer).to eq 4
    end
  end

  describe '#birthday' do
    it 'creates birthday date' do
      date = Birthday.new(4, "April")
      expect(date.birthday).to eq Date.new(2019,04,04)
    end
  end

  describe '#calculation' do
    it 'calculates days until birthday' do
      date = Birthday.new(4, "April")
      expect(date.calculation).to eq 0
    end
  end

  describe '#birthday_today?' do
    it 'returns true is birthday is today' do
      date = Birthday.new(4, "April")
      expect(date.birthday_today?).to be_truthy
    end
  end
end
