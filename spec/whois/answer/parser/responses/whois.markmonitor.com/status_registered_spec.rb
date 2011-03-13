# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.markmonitor.com/status_registered_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.markmonitor.com.rb'

describe Whois::Answer::Parser::WhoisMarkmonitorCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.markmonitor.com/status_registered.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      lambda { @parser.status }.should raise_error(Whois::PropertyNotSupported)
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
      @parser.created_on.should == Time.parse("1999-03-15")
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2011-02-11")
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2012-03-14")
    end
  end
  context "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "Markmonitor.com"
      @parser.registrar.url.should          == "http://www.markmonitor.com"
    end
  end
  context "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Answer::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].name.should         == "DNS Admin"
      @parser.registrant_contacts[0].organization.should == "Google Inc."
      @parser.registrant_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.registrant_contacts[0].city.should         == "Mountain View"
      @parser.registrant_contacts[0].zip.should          == "94043"
      @parser.registrant_contacts[0].state.should        == "CA"
      @parser.registrant_contacts[0].country_code.should == "US"
      @parser.registrant_contacts[0].phone.should        == "+1.6506234000"
      @parser.registrant_contacts[0].fax.should          == "+1.6506188571"
      @parser.registrant_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  context "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Answer::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].name.should         == "DNS Admin"
      @parser.admin_contacts[0].organization.should == "Google Inc."
      @parser.admin_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.admin_contacts[0].city.should         == "Mountain View"
      @parser.admin_contacts[0].zip.should          == "94043"
      @parser.admin_contacts[0].state.should        == "CA"
      @parser.admin_contacts[0].country_code.should == "US"
      @parser.admin_contacts[0].phone.should        == "+1.6506234000"
      @parser.admin_contacts[0].fax.should          == "+1.6506188571"
      @parser.admin_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  context "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Answer::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].name.should         == "DNS Admin"
      @parser.technical_contacts[0].organization.should == "Google Inc."
      @parser.technical_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.technical_contacts[0].city.should         == "Mountain View"
      @parser.technical_contacts[0].zip.should          == "94043"
      @parser.technical_contacts[0].state.should        == "CA"
      @parser.technical_contacts[0].country_code.should == "US"
      @parser.technical_contacts[0].phone.should        == "+1.6506234000"
      @parser.technical_contacts[0].fax.should          == "+1.6506188571"
      @parser.technical_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].should == _nameserver.new(:name => "ns2.google.com")
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].should == _nameserver.new(:name => "ns1.google.com")
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].should == _nameserver.new(:name => "ns4.google.com")
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].should == _nameserver.new(:name => "ns3.google.com")
    end
  end
end
