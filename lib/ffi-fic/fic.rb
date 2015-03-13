module FIC
class Fic
    def initialize(key,algo,keyid) # string, string, uint64
        @key   = key
        @algo   = algo
        @keyid = keyid
        @pointer = FIC.fic_new @key, @algo, @keyid
        @pointer
    end

    def initialized?
        !@pointer.nil?
    end


end
end

