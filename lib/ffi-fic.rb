require 'ffi'

module FIC
    extend FFI::Library
    # you must install it
    ffi_lib 'libfic.so'
    attach_function :fic_new, [:string, :string, :uint64], :pointer
    attach_function :fic_sign_content, [:pointer, :string], :int
    attach_function :fic_verify_content, [:pointer, :string], :int
    attach_function :fic_sign_meta, [:pointer, :string], :int
    attach_function :fic_verify_meta, [:pointer, :string], :int
end


require_relative 'ffi-fic/fic'
require_relative 'ffi-fic/util'

