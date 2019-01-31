class Backer

  attr_accessor :name, :backed_projects

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end
