module FIC
class Fic
    def initialize(a,b,c) # string, string, uint64
        @a = a
        @b = b
        @c = c
        FIC.fic_new @a,@b,@c
    end
end
end

