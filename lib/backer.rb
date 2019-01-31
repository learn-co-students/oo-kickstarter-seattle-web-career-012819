# bob = Backer.new("Bob")
# awesome_project = Project.new("This is an Awesome Project")
# 
# bob.back_project(awesome_project)
# 
# bob.backed_projects
# # => #<Project:0x000001018683d0 @title="This is an Awesome Project"...>
# 
# awesome_project.backers
# # => #<Backer:0x000001018b9370 @name="Bob"...>
class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        unless @backed_projects.include? project
            @backed_projects << project
            project.add_backer(self)
        end
    end
end