class Backer
  attr_reader :name, :backed_projects
  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def self.all
    @@all
  end

  # accepts a Project as an argument and stores it in a backed_projects array
  def back_project(project)
    @backed_projects << project
    
    # adds the backer to the project's backers array
    project.backers << self
  end
end
