class Painting

  # attr_reader :title, :price
  attr_accessor :artist, :gallery, :title, :price

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end
  #
  def self.total_price
    self.all.map {|painting| painting.price}.reduce(:+)
  end

end
