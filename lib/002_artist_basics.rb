class Artist
@@all = []

  def initialize (name)
    @name = name
  end


  def name
    @name
  end

  def name= (name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create (name)
    self.new(name).save
    self
  end

end
