module FIC
class Fic
    attr_accessor :pointer
    def initialize(key,algo,keyid) # string, string, uint64
        @key   = key
        @algo   = algo
        @keyid = keyid
        @pointer = FIC.fic_new @key, @algo, @keyid
        @pointer
    end

    def sign_content(content)
        FIC::fic_sign_content(@pointer, content) == 1
    end

    def verify_content(content)
        FIC::fic_verify_content(@pointer, content) == 1
    end

    def sign_meta(meta)
        FIC::fic_sign_meta(@pointer, meta) == 1
    end

    def verify_meta(meta)
        FIC::fic_verify_meta(@pointer, meta) == 1
    end

    def initialized?
        !@pointer.nil?
    end


end
end

