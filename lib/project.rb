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
class Project
    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        # only add them if they're not there already
        unless @backers.include? backer
            @backers << backer
            # make sure to add it the other way around
            backer.back_project(self)
        end
    end
end