class Schedule
  def scheduled?(schedulable, starting, ending)
    puts "This #{schedulable.class} is "+"available #{starting} - #{ending}"
  end
end

class Bicycle
  attr_reader :schedule, :size, :chain, :tire_size

  # inject the Schedule and provide a default
  def initialize(**opts)
    @schedule = opts[:schedule] || Schedule.new
  end

  # returns true if bicyle is available
  def schedulable?(starting, ending)
    !scheduled?(starting - lead_days, ending)
  end

  # returns the schedule's answer
  def scheduled?(starting, ending)
    schedule.scheduled?(self, starting, ending)
  end

  # return the number of lead elements before a bicycle can be scheduled
  def lead_days
    1
  end
end

require 'date'
starting = Date.parse("2019/09/04")
ending = Date.parse("2019/09/10")

b = Bicycle.new
puts b.scheduled?(starting, ending)
