class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(**opts)
    @size = opts[:size]
    @chain = opts[:chain] || default_chain
    @tire_size = opts[:tire_size] || default_tire_size
  end

  def spares
    { tire_size: tire_size,
      chain: chain }
  end

  def default_chain
    '11-speed'
  end

  def default_tire_size
    raise NotImplementedError
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(**opts)
    @tape_color = opts[:tape_color]
    super
  end

  def spares
    super.merge(tape_color: tape_color)
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

  def spares
    super.merge(front_shock: front_shock)
  end

  def default_tire_size
    '2.1'
  end
end

# this is an illustration of a trap, if someone creates a new subclass and forgets to send super in its initialize method ,he encounters a problem.
# the subclass will miss out on common initialization provided by the base class.