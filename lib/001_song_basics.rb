class Song
@@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  
end
