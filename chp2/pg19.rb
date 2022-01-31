# Example Application

# Bicycles are wonderfully efficient machines, in part because they use gears to provide
# humans with mechanical advantage. When riding a bike you can choose between a
# small gear (which is easy to pedal but not very fast) or a big gear (which is harder to
# pedal but sends you zooming along). Gears are great because you can use small ones
# to creep up steep hills and big ones to fly back down.

# Gears work by changing how far the bicycle travels each time your feet
# complete one circle with the pedals. More specifically, your gear controls how
# many times the wheels rotate for each time the pedals rotate. In a small gear your
# feet spin around several times to make the wheels rotate just once; in a big gear
# each complete pedal rotation may cause the wheels to rotate multiple times.

class Gear
  attr_reader :chainring, :cog

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

puts Gear.new(52, 11).ratio
# 4.7272727272727275

puts Gear.new(30, 27).ratio
# 1.1111111111111112
