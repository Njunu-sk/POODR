class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring: default_chainring, cog: 11, wheel:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def default_chainring
    (100/2) - 10
    # some useful example
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end
end

puts Gear.new(wheel: Wheel.new(26, 1.5)).chainring
# 40
puts Gear.new(chainring: 52, wheel: Wheel.new(26, 1.5)).gear_inches
# 137.0909090909091
