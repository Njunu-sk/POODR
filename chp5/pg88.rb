# compounding the problem

class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(preparers)

    preparers.each { |preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    }
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each {|bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    puts 'class Mechanic::Preparing a bicycle'
  end
end

class TripCoordinator
  def buy_food(customer)
    puts 'class TripCoordinator::Buying food'
  end
end

class Driver
  def gas_up(vehicle)
    puts 'class Driver::Gas up'
  end

  def fill_water_tank(vehicle)
    puts 'class Driver::fill water tank'
  end
end
