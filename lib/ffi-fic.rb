require 'ffi'

module FIC
    extend FFI::Library
    # you must install it
    ffi_lib 'libfic.so'
    #(const char *key, const char *md, uint64_t id)

    attach_function :fic_new, [:string, :string, :uint64], :pointer
    attach_function :fic_sign_content, [:pointer, :string], :int
    attach_function :fic_verify_content, [:pointer, :string], :int
    attach_function :fic_sign_meta, [:pointer, :string], :int
    attach_function :fic_verify_meta, [:pointer, :string], :int

    class Util
        def self.strtoull(x,base=16)
            x.to_i(base)
        end
    end
end
