# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.centralnic.com/sa.com/status_registered_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.centralnic.com.rb'

describe Whois::Answer::Parser::WhoisCentralnicCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.centralnic.com/sa.com/status_registered.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  context "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2007-09-27")
    end
  end
  context "#updated_on" do
    it do
      lambda { @parser.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2011-09-27")
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1191.websitewelcome.com"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns1192.websitewelcome.com"
    end
  end
end
