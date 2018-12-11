# RecordBin Python

[![PyPi](https://img.shields.io/pypi/v/recordbin.svg)](https://pypi.python.org/pypi/recordbin)
[![CircleCI](https://circleci.com/gh/recordbinco/recordbin-python.svg?style=svg)](https://circleci.com/gh/recordbinco/recordbin-python)
[![codecov](https://codecov.io/gh/recordbinco/recordbin-python/branch/master/graph/badge.svg)](https://codecov.io/gh/recordbinco/recordbin-python)

Python Client for Python [RecordBin](http://www.github.com/recordbinco/recordbin-api)

---

![project-logo](https://github.com/gtalarico/recordbin-python/blob/master/art/logo.png)

## Installing

```
pip install recordbin
```

### Usage Example

```
>>> from recordbin import RecordBin
>>> recordbin = RecordBin('http://api.recordbin.co', token='123')
>>> recordbin.post({'username': 'gtalarico'})
```

#### Getting Posted Record

By default records are posted asynchronously and responses
are Future objects.
To get the post response use the `result()` method

```
>>> future = recordbin.post({'username': 'gtalarico'})
>>> response = future.result()
>>> record = response.json()
```

## License

[MIT](https://opensource.org/licenses/MIT)
