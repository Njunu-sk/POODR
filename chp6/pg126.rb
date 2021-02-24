class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(**opts)
    @size = opts[:size]
    @chain = opts[:chain] || default_chain
    @tire_size = opts[:tire_size] || default_tire_size
  end

  def default_chain
    '11-speed'
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(**opts)
    @tape_color = opts[:tape_color]
    super
  end

  def default_tire_size
    '23'
  end
end

class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(**opts)
    @front_shock = opts[:front_shock]
    @rear_shock = opts[:rear_shock]
    super
  end

  def default_tire_size
    '2.1'
  end
end

road_bike = RoadBike.new(
  size: 'M',
  tape_color: 'red'
)

puts road_bike.tire_size # 23
puts road_bike.chain # 11-speed

mountain_bike = MountainBike.new(
  size: 'S',
  front_shock: 'Manitou',
  rear_shock: 'Fox'
)

puts mountain_bike.tire_size # 2.1
puts mountain_bike.chain # 11-speed
