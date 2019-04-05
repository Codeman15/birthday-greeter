require 'date'

class Birthday
  attr_reader :todays_date
    def initialize(day, month)
      @day = day.to_i
      @month = month
      @todays_date = Date.today
    end

    def string_to_integer
      Date::MONTHNAMES.index(@month)
    end

    def birthday
      Date.new(Date.today.year, string_to_integer.to_i, @day)
    end

    def calculation
      time_until =  birthday - @todays_date
      time_until.to_i
    end

    def birthday_today?
      birthday == @todays_date
    end
end
