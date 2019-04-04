require 'date'

class Date
  attr_reader :todays_date, :birthday
    def initialize
      @todays_date = nil
      @birthday = nil
    end

    def string_to_integer(month)
      Date::MONTHNAMES.index(month)
    end

    def birthday(day, month)
      puts @birthday = Date.new(Date.today.year, string_to_integer(month), day)
    end

    def calculation
      time_until = @birthday - (@todays_date = DateTime.now)
      puts time_until.to_i
    end
end

date=Date.new
date.birthday(29, "May")
date.calculation
