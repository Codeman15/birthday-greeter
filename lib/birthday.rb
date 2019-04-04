require 'date'

class Birthday
  attr_reader :todays_date, :birthday
    def initialize(day, month)
      @day = day.to_i
      @month = month
      @todays_date = nil
      @birthday = nil
    end

    def string_to_integer
      Date::MONTHNAMES.index(@month)
    end

    def birthday
      @birthday = Date.new(Date.today.year, string_to_integer.to_i, @day)
    end

    def calculation
      time_until =  @birthday - (@todays_date = DateTime.now)
      time_until.to_i
    end
end
