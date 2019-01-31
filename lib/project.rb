class Project

  attr_accessor :title, :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []

    @@all << self
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end


  # def backers
  #   Backer.all.select{|backer| backer.backed_projects == self}
  # end



end