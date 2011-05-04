require 'date_iterator'
require 'test/unit'

class DateIteratorTest < Test::Unit::TestCase

  def test_day_iterator
    counter = 0
    Date.parse("2011-01-25").each_day_until("2011-02-02") do |date|
      assert date.is_a?(Date)
      counter += 1
    end
    assert_equal 9, counter
  end

  def test_day_iterator_with_iterator
    counter = 0
    Date.parse("2011-01-25").each_day_until("2011-02-02").each do |date|
      assert date.is_a?(Date)
      counter += 1
    end
    assert_equal 9, counter
  end

  def test_week_iterator
    counter = 0
    Date.parse("2010-12-05").each_week_until("2011-02-02") do |date|
      assert date.is_a?(Date)
      assert_equal 1, date.wday
      counter += 1
    end
    assert_equal 10, counter
  end

  def test_week_iterator_with_iterator
    counter = 0
    Date.parse("2010-12-05").each_week_until("2011-02-02").each do |date|
      assert date.is_a?(Date)
      assert_equal 1, date.wday
      counter += 1
    end
    assert_equal 10, counter
  end

  def test_month_iterator
    counter = 0
    Date.parse("2010-12-25").each_month_until("2011-05-02") do |date|
      assert date.is_a?(Date)
      assert_equal 1, date.day
      counter += 1
    end
    assert_equal 6, counter
  end

  def test_month_iterator_with_iterator
    counter = 0
    Date.parse("2010-12-25").each_month_until("2011-05-02").each do |date|
      assert date.is_a?(Date)
      assert_equal 1, date.day
      counter += 1
    end
    assert_equal 6, counter
  end

  def test_original_value_is_preserved_in_day_iterator_and_block_returns_nil
    _date = Date.parse("2010-12-25")
    assert_nil _date.each_day_until("2011-02-01") {}
    assert_equal Date.parse("2010-12-25"), _date
  end

  def test_original_value_is_preserved_in_month_iterator_and_block_returns_nil
    _date = Date.parse("2010-12-25")
    assert_nil _date.each_week_until("2011-02-01") {}
    assert_equal Date.parse("2010-12-25"), _date
  end

  def test_original_value_is_preserved_in_month_iterator_and_block_returns_nil
    _date = Date.parse("2010-12-25")
    assert_nil _date.each_month_until("2011-02-01") {}
    assert_equal Date.parse("2010-12-25"), _date
  end


end