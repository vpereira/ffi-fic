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
            f.pointer.wont_be_nil
        end
        it "call new and get a pointer back" do
            f = FIC::Fic.new "foobar.pub.asc", "sha512", FIC::Util.strtoull("b34f10ddc906fd7f")
            # not a better way to express it using spec matchers
            assert_equal f.initialized?,true
        end

        describe "verification" do
            before do
                @f = FIC::Fic.new "foobar.pub.asc", "sha512", FIC::Util.strtoull("b34f10ddc906fd7f")
                @my_file = File.join(File.dirname(__FILE__),"TEST_FILE.TXT")
            end

            it "test file should exist" do
                assert File.exists?(@my_file)
            end


            it "call verify_content and return true" do
                assert_equal @f.verify_content(@my_file), true
            end

            it "call verify_meta and return true" do
                skip "pending"
                assert_equal @f.verify_meta(@my_file), true
            end
        end
        describe "sign" do
            before do
                @f = FIC::Fic.new "foobar.sec.asc", "sha512", FIC::Util.strtoull("b34f10ddc906fd7f")
                @my_file = File.join(File.dirname(__FILE__),"TEST_FILE.TXT")
            end

            it "test file should exist" do
                assert File.exists?(@my_file)
            end

            it "call sign_content and return true" do
                assert_equal @f.sign_content(@my_file), true
            end

            it "call sign_meta and return true" do
                skip "pending"
                assert_equal @f.sign_meta(@my_file), true
            end
        end

    end
end
