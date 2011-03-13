# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.ch/property_nameservers_with_ip_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.ch.rb'

describe Whois::Answer::Parser::WhoisNicCh, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.ch/property_nameservers_with_ip.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].should == _nameserver.new(:name => "ns1.citrin.ch", :ipv4 => "193.247.72.8", :ipv6 => "2001:8a8:21:5::11")
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].should == _nameserver.new(:name => "ns2.citrin.ch", :ipv4 => "62.12.149.3", :ipv6 => "2001:8a8:21:5::12")
    end
  end
end
