class Project
    
    attr_reader :title, :backer, :backers

    @@all = []

    def initialize(title)
        @title = title
        @backer = []
        @backer << self
        @backers = []
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        @@all << self
        @backer << self
        @backers << backer
    end

    def self.all
        @@all
    end
end