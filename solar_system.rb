  class System

    @@bodies = []

    def initialize

    end

    def bodies
      @@bodies
    end

    def add(celestial_body)
      @@bodies << celestial_body
    end

    def total_mass
      sum = 0
      @@bodies.each do |body|
        sum += body.mass
      end
      puts sum
    end
end


  class Body

    def initialize(name, mass)
    @name = name
    @mass = mass
    end

    def name
      @name
    end

    def mass
      @mass
    end
  end


  class Planet < Body

    def initialize(name, mass, hours_in_day, days_in_year)
      super(name, mass)
      @hours_in_day = hours_in_day
      @days_in_year = days_in_year
    end

    def day
      puts "it will take #{@hours_in_day} hours for #{@name} to complete one full rotation"
    end

    def year
      puts "it will take #{@days_in_year} days for #{@name} to complete one full rotation around the sun"
    end

  end

  earth = Planet.new("earth", 100, 24, 365)
  # earth.day
  # earth.year
  # earth.name
  # earth.mass
  system_1 = System.new
  # system_1.add(earth)
  # system_1.total_mass


  twinkle = Star.new("john", 1000, "G-star")
  system_1.add("twinkle")
  system_1.total_mass








  class Star < Body

    def initialize(name, mass, type)
      super(name, mass)
      @type = type
    end





  end




  class Moon < Body
    def initialize (name, mass, month, planet_it_orbits)
      super(name, mass)
      @month = month
      @planet_it_orbits = planet_it_orbits
    end

    def month
      puts ""
    end

    def planet_it_orbits

    end
  end
