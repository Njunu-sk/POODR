# Introduces a new feature gear_inches

# Compares the bicycles that differ in both gearing and wheel size

class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (rim + (tire * 2))
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
# 137.0909090909091
puts Gear.new(52, 11, 24, 1.25).gear_inches
# 125.27272727272728
