class Backer
    attr_reader :name

    @@backed_projects = []

    def initialize(name)
        @name = name
    end

    def back_project(project)
        @@backed_projects << project
        if !(project.backers.include?(self))
            project.add_backer(self)
        end
    end

    def backed_projects
        @@backed_projects
    end
end

# Awesomeness provided by Kevin McMinnn and Ethan Roberts