require File.expand_path(File.dirname(__FILE__)) + '/../../test_helper'

require 'holidays/date_calculator/weekend_modifier'

class WeekendModifierDateCalculatorTests < Test::Unit::TestCase
  def setup
    @subject = Holidays::DateCalculator::WeekendModifier.new
  end

  def test_to_monday_if_weekend
    assert_equal Date.civil(2015, 5, 4), @subject.to_monday_if_weekend(Date.civil(2015, 5, 3))
    assert_equal Date.civil(2015, 5, 4), @subject.to_monday_if_weekend(Date.civil(2015, 5, 2))
  end

  def test_to_monday_if_sunday
    assert_equal Date.civil(2015, 5, 4), @subject.to_monday_if_sunday(Date.civil(2015, 5, 3))
  end

  def test_to_weekday_if_boxing_weekend
    assert_equal Date.civil(2015, 12, 25), @subject.to_weekday_if_boxing_weekend(Date.civil(2015, 12, 25))
    assert_equal Date.civil(2015, 12, 28), @subject.to_weekday_if_boxing_weekend(Date.civil(2015, 12, 26))
    assert_equal Date.civil(2015, 12, 29), @subject.to_weekday_if_boxing_weekend(Date.civil(2015, 12, 27))
  end

  def test_to_weekday_if_weekend
    assert_equal Date.civil(2015, 5, 4), @subject.to_weekday_if_weekend(Date.civil(2015, 5, 3))
    assert_equal Date.civil(2015, 5, 1), @subject.to_weekday_if_weekend(Date.civil(2015, 5, 2))
  end

  def test_to_weekday_if_boxing_weekend_from_year
    assert_equal Date.civil(2015, 12, 28), @subject.to_weekday_if_boxing_weekend_from_year(2015)
  end
end
