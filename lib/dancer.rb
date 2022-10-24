require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance.rb'
require_relative './kid.rb'

class Dancer
    include Dance
    attr_accessor :name
    extend MetaDancing
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    def initialize(name)
        @name = name
    end
end
