# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/au.yaml
class AuDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_au
{Date.civil(2007,1,1) => 'New Year\'s Day', 
 Date.civil(2007,1,26) => 'Australia Day', 
 Date.civil(2007,4,6) => 'Good Friday',
 Date.civil(2007,4,9) => 'Easter Monday',
 Date.civil(2007,4,25) => 'ANZAC Day',
 Date.civil(2007,12,25) => 'Christmas Day',
 Date.civil(2007,12,26) => 'Boxing Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :au, :informal)[0] || {})[:name]
end

[:au_sa, :au_act, :au_nsw, :au_].each do |r|
  assert_equal 'Labour Day', Date.civil(2007,10,1).holidays(r)[0][:name]
end

[:au_sa, :au_act, :au_nsw, :au_vic, :au_tas, :au_qld, :au_nt, :au_].each do |r|
  assert_equal 'Queen\'s Birthday', Date.civil(2007,6,11).holidays(r)[0][:name]
end

assert_equal 'Labour Day', Date.civil(2007,3,5).holidays(:au_wa)[0][:name]
assert_equal 'Labour Day', Date.civil(2007,3,12).holidays(:au_vic)[0][:name]
assert_equal 'Labour Day', Date.civil(2007,5,7).holidays(:au_qld)[0][:name]

assert_equal 'Easter Sunday', Date.civil(2007,4,8).holidays(:au_nsw)[0][:name]

assert_equal 'May Day', Date.civil(2007,5,7).holidays(:au_nt)[0][:name]

assert_equal 'Eight Hours Day', Date.civil(2007,3,12).holidays(:au_tas)[0][:name]

assert_equal 'Labour Day', Date.civil(2013,10,7).holidays(:au_qld)[0][:name]
assert_equal 'Labour Day', Date.civil(2012,5,7).holidays(:au_qld)[0][:name]

assert_equal "Queen's Birthday", Date.civil(2012,6,11).holidays(:au_qld)[0][:name]
assert_equal "Queen's Birthday", Date.civil(2012,10,1).holidays(:au_qld)[0][:name]
assert_equal "Queen's Birthday", Date.civil(2013,6,10).holidays(:au_qld)[0][:name]

assert_equal "Queen's Birthday", Date.civil(2014, 9, 29).holidays(:au_wa)[0][:name]
assert_equal "Queen's Birthday", Date.civil(2015, 9, 28).holidays(:au_wa)[0][:name]
assert_equal "Queen's Birthday", Date.civil(2016, 9, 26).holidays(:au_wa)[0][:name]

assert_equal "Family & Community Day", Date.civil(2014, 9, 29).holidays(:au_act)[0][:name]
assert_equal "Family & Community Day", Date.civil(2015, 9, 28).holidays(:au_act)[0][:name]
assert_equal "Family & Community Day", Date.civil(2016, 9, 26).holidays(:au_act)[0][:name]

assert_equal 'Australia Day', Date.civil(2014,1,26).holidays(:au_qld)[0][:name]
assert_equal 'Australia Day', Date.civil(2014,1,27).holidays(:au_qld, :observed)[0][:name]

assert_equal 'Cairns Show', Date.civil(2014,7,18).holidays(:au_qld_cairns)[0][:name]
assert_equal 'Cairns Show', Date.civil(2013,7,19).holidays(:au_qld_cairns)[0][:name]

assert_equal 'Royal Hobart Show', Date.civil(2013, 10, 24).holidays(:au_tas_south)[0][:name]
assert_equal 'Royal Hobart Show', Date.civil(2014, 10, 23).holidays(:au_tas_south)[0][:name]
assert_equal 'Royal Hobart Show', Date.civil(2015, 10, 22).holidays(:au_tas_south)[0][:name]
assert_equal 'Royal Hobart Show', Date.civil(2016, 10, 20).holidays(:au_tas_south)[0][:name]

assert_equal 'Recreation Day', Date.civil(2013, 11, 4).holidays(:au_tas_north)[0][:name]
assert_equal 'Recreation Day', Date.civil(2014, 11, 3).holidays(:au_tas_north)[0][:name]
assert_equal 'Recreation Day', Date.civil(2015, 11, 2).holidays(:au_tas_north)[0][:name]
assert_equal 'Recreation Day', Date.civil(2016, 11, 7).holidays(:au_tas_north)[0][:name]

assert_equal 'G20 Day', Date.civil(2014,11,14).holidays(:au_qld_brisbane)[0][:name]
assert_equal [], Date.civil(2014,11,14).holidays(:au_qld)
assert_equal [], Date.civil(2015,11,14).holidays(:au_qld_brisbane)

assert_equal 'Melbourne Cup Day', Date.civil(2014,11,4).holidays(:au_vic)[0][:name]
assert_equal 'Melbourne Cup Day', Date.civil(2015,11,3).holidays(:au_vic)[0][:name]

assert_equal 'Royal Hobart Regatta', Date.civil(2012, 2, 13).holidays(:au_tas_south)[0][:name]
assert_equal 'Royal Hobart Regatta', Date.civil(2014, 2, 10).holidays(:au_tas_south)[0][:name]
assert_equal 'Royal Hobart Regatta', Date.civil(2015, 2, 9).holidays(:au_tas_south)[0][:name]
assert_equal 'Royal Hobart Regatta', Date.civil(2016, 2, 8).holidays(:au_tas_south)[0][:name]

assert_equal "May Public Holiday", Date.civil(2005, 5, 16).holidays(:au_sa)[0][:name]

assert_equal "March Public Holiday", Date.civil(2014, 3, 10).holidays(:au_sa)[0][:name]
assert_equal "March Public Holiday", Date.civil(2015, 3, 9).holidays(:au_sa)[0][:name]
assert_equal "March Public Holiday", Date.civil(2016, 3, 14).holidays(:au_sa)[0][:name]
assert_equal "March Public Holiday", Date.civil(2017, 3, 13).holidays(:au_sa)[0][:name]
  end
end
