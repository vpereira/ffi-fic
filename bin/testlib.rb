#!/usr/bin/env ruby

require_relative '../lib/ffi-fic'

#./testlib foobar.pub.asc foobar.sec.asc b34f10ddc906fd7f LICENSE
fh = FIC.fic_new ARGV[1], "sha512", FIC::Util.strtoull(ARGV[2])
sign_ret = FIC.fic_sign_content fh, ARGV[3]
if sign_ret != 1
   puts "error to parse file" 
   exit -1
else puts "SIGNED"
end

fh = nil
fh = FIC.fic_new ARGV[0], "sha512", FIC::Util.strtoull(ARGV[2])
verify_ret = FIC.fic_verify_content fh, ARGV[3]

if verify_ret != 1
    puts "error to verify"
    exit -1
else
    puts "VERIFIED"
end

exit 0


