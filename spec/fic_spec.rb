require_relative './spec_helper.rb'
require_relative '../lib/ffi-fic.rb'

describe FIC do
    describe "Util" do
        it "call strtoull and it return a bignumber" do
            FIC::Util.strtoull("b34f10ddc906fd7f").must_be_kind_of(Bignum)
        end
    end
end
