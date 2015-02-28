require 'date'

module DateIterator

  # yields inclusive date object of each day
  def each_day_until(_until=Date.today, &block)
    return self.to_enum(:each_day_until, _until) unless block_given?
    self.step(_until.is_a?(Date) ? _until : Date.parse(_until.to_s), +1, &block)
    nil
  end

  # yields inclusive date object of first day of week, starting with mondays
  def each_week_until(_until=Date.today, use_sunday_as_beg_of_week = false, &block)
    return self.to_enum(:each_week_until, _until, use_sunday_as_beg_of_week) unless block_given?
    _days_to_monday = self.wday == 0 ? 6 : self.wday - 1
    _monday = self - _days_to_monday
    _monday.step(_until.is_a?(Date) ? _until : Date.parse(_until.to_s), +7, &block)
    nil
  end

  # yields inclusive date object of first day of month
  def each_month_until(_until=Date.today, &block)
    return self.to_enum(:each_month_until, _until) unless block_given?

    _date = Date.new(self.year,self.month,1)
    _until = _until.is_a?(Date) ? _until : Date.parse(_until.to_s)
    _until = Date.new(_until.year,_until.month,1)

    while _date <= _until
      yield _date
      _date = _date >> 1
      _date = Date.new(_date.year,_date.month,1)
    end
  end

  # yields inclusive date object of first day of the year
  def each_year_until(_until=Date.today, &block)
    return self.to_enum(:each_year_until, _until) unless block_given?

    _date = Date.new(self.year,1,1)
    _until = _until.is_a?(Date) ? _until : Date.parse(_until.to_s)
    _until = Date.new(_until.year,1,1)

    while _date <= _until
      yield _date
      _date = _date >> 12
      _date = Date.new(_date.year,_date.month,1)
    end
  end

end

Date.send(:include, DateIterator)
