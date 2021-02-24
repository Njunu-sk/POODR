class Bicycle
  attr_reader :size, :parts

  def initialize(size:, parts:)
    @size = size
    @parts = parts
  end

  def spares
    parts.spares
  end
end

class Parts
  attr_reader :parts

  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select { |part| part.needs_spare }
  end
end

class Part
  attr_reader :name, :description, :needs_spare

  def initialize(name:, description:, needs_spare: true)
    @name = name
    @description = description
    @needs_spare = needs_spare
  end
end

chain = Part.new(name: 'chain', description: '11-speed')

road_tire = Part.new(name: 'tire_size', description: '23')

tape = Part.new(name: 'tape_color', description: 'red')

mountain_tire = Part.new(name: 'tire_size', description: '2.1')

rear_shock = Part.new(name: 'rear_shock', description: 'Fox', needs_spare: false)

front_shock = Part.new(name: 'front_shock', description: 'Manitou')

road_bike_parts = Parts.new([chain, road_tire, tape])

road_bike = Bicycle.new(
  size: 'L',
  parts: Parts.new(
    [
      chain,
      road_tire,
      tape
    ]
  )
)

puts road_bike.size
# L
puts road_bike.spares.inspect
# [#<Part:0x000055876cbd75d8 @name="chain", @description="11-speed", @needs_spare=true>, #<Part:0x000055876cbd74c0 @name="tire_size", @description="23", @needs_spare=true>, #<Part:0x000055876cbd6ca0 @name="tape_color", @description="red", @needs_spare=true>]

mountain_bike = Bicycle.new(
  size: 'L',
  parts: Parts.new(
    [
      chain,
      mountain_tire,
      front_shock,
      rear_shock
    ]
  )
)

puts mountain_bike.size
# L
puts mountain_bike.spares.inspect
# [#<Part:0x000055761e99c160 @name="chain", @description="11-speed", @needs_spare=true>, #<Part:0x000055761e997b10 @name="tire_size", @description="2.1", @needs_spare=true>, #<Part:0x000055761e997890 @name="front_shock", @description="Manitou", @needs_spare=true>]