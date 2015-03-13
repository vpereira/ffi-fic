require_relative './spec_helper.rb'
require_relative '../lib/ffi-fic.rb'

describe FIC do
    describe "Util" do
        it "call strtoull and it return a bignumber" do
            FIC::Util.strtoull("b34f10ddc906fd7f").must_be_kind_of(Bignum)
        end
    end
    describe "Fic" do
        it "call new and get a pointer back" do
            f = FIC::Fic.new "foobar.pub.asc", "sha512", FIC::Util.strtoull("b34f10ddc906fd7f")
            f.wont_be_nil
        end
        it "call new and get a pointer back" do
            f = FIC::Fic.new "foobar.pub.asc", "sha512", FIC::Util.strtoull("b34f10ddc906fd7f")
            # not a better way to express it using spec matchers
            assert_equal f.initialized?,true
        end
    end
end
