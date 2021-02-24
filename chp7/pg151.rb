require_relative 'pg150'

class Bicycle
  include Schedulable

  def lead_days
    1
  end
end

class Vehicle
  include Schedulable

  def lead_days
    3
  end
end

class Mechanic
  include Schedulable

  def lead_days
    4
  end
end

require 'date'
starting = Date.parse("2019/09/04")
ending = Date.parse("2019/09/10")

b = Bicycle.new
puts b.scheduled?(starting, ending)
# This Bicycle is available 2019-09-04 - 2019-09-10
# false

v = Vehicle.new
puts v.scheduled?(starting, ending)
# This Vehicle is available 2019-09-04 - 2019-09-10
# false

m = Mechanic.new
puts m.scheduled?(starting, ending)
# This Mechanic is available 2019-09-04 - 2019-09-10
# false