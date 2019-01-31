class Project

  attr_accessor :title, :backers
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
