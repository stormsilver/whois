# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.jprs.jp/jp/property_updates_on_error_out-of-range_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.jprs.jp.rb'

describe Whois::Answer::Parser::WhoisJprsJp, "property_updates_on_error_out-of-range.expected" do

  before(:each) do
    file = fixture("responses", "whois.jprs.jp/jp/property_updates_on_error_out-of-range.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2010-10-18 11:30:47 JST")
    end
  end
end
