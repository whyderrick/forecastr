class Day
  attr_reader :day_of_week, :date, :text, :high, :low
  
  def initialize(options)
    @day_of_week = ABBREVIATED_FULL_DAY_NAMES[options["day"]]
    @date        = options["date"]
    @text        = options["text"]
    @high        = options["high"]
    @low         = options["low"]
  end

  private
    ABBREVIATED_FULL_DAY_NAMES = {
      "Mon" => "Monday",
      "Tue" => "Tuesday",
      "Wed" => "Wednesday",
      "Thu" => "Thursday",
      "Fri" => "Friday",
      "Sat" => "Saturday",
      "Sun" => "Sunday"
    }
end
