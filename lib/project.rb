class Project
  attr_accessor :backers, :title
  def initialize(title)
    @backers=[]
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(self)

    backer.back_project(self)
  end
  end

  def backer
    @backer
  end

end
