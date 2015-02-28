# DateIterator
---

**Iterate by day, week, or month - inclusive**

* Tested on CRuby: 2.1, 2.2 (but should work at least from 1.8.7)
* **adds 3 instance methods** to Date:
  * `each_day_until`
  * `each_week_until`
  * `each_month_until`
  * If no block is given, returns an enumerator.

## Usage
```ruby
>> Date.parse("2010-01-01").each_day_until("2010-01-05") { |d| puts d }
2010-01-01
2010-01-02
2010-01-03
2010-01-04
2010-01-05
=> nil

>> Date.parse("2010-01-01").each_week_until("2010-01-05") { |d| puts d }
2009-12-28
2010-01-04
=> nil

>> Date.parse("2010-01-01").each_month_until("2010-02-05") { |d| puts d }
2010-01-01
2010-02-01
=> nil
```