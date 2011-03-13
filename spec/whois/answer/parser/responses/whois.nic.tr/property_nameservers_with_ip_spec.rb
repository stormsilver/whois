# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.tr/property_nameservers_with_ip_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.tr.rb'

describe Whois::Answer::Parser::WhoisNicTr, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.tr/property_nameservers_with_ip.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "titan.radore.com"
      @parser.nameservers[0].ipv4.should == nil
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "janus.radore.com"
      @parser.nameservers[1].ipv4.should == nil
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "mimas.rh.com.tr"
      @parser.nameservers[2].ipv4.should == "77.75.34.2"
    end
  end
end
