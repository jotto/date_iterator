Ruby DateIterator
=========
  so you can iterate by day, week, or month - inclusive
  tested 1.8.7, 1.9.2

Usage
-----

    new methods on the date object: each_day_until, each_week_until, each_month_until
    pass a block or an enumerator

    >> Date.parse("2010-01-01").each_day_until("2010-01-05"){|d|p(d.to_s)}
    2010-01-01
    2010-01-02
    2010-01-03
    2010-01-04
    2010-01-05
    => nil

    >> Date.parse("2010-01-01").each_week_until("2010-01-05"){|d|p(d.to_s)}
    2009-12-28
    2010-01-04
    => nil

    >> Date.parse("2010-01-01").each_month_until("2010-02-05"){|d|p(d.to_s)}
    2010-01-01
    2010-02-01
    => nil

License
-------------

(The MIT License)

Copyright © 2011 Jonathan Otto

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE