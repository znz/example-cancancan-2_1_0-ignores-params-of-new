# CanCanCan 2.1.0 failed with preset parameters

## Steps to reproduce

```
git clone https://github.com/znz/example-cancancan-2_1_0-ignores-params-of-new
cd example-cancancan-2_1_0-ignores-params-of-new
bundle install
rails db:migrate
rails test:system
```

## Expected test result with cancancan 2.0.0

```
$ rake test:system
Running via Spring preloader in process 75024
Run options: --seed 56607

# Running:

Puma starting in single mode...
* Version 3.10.0 (ruby 2.3.5-p376), codename: Russell's Teapot
* Min threads: 0, max threads: 1
* Environment: test
* Listening on tcp://0.0.0.0:57926
Use Ctrl-C to stop
.

Finished in 2.710088s, 0.3690 runs/s, 0.3690 assertions/s.
1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
```

## Actual test result with cancancan 2.1.0

```
% rake test:system
Running via Spring preloader in process 75355
Run options: --seed 20643

# Running:

Puma starting in single mode...
* Version 3.10.0 (ruby 2.3.5-p376), codename: Russell's Teapot
* Min threads: 0, max threads: 1
* Environment: test
* Listening on tcp://0.0.0.0:58818
Use Ctrl-C to stop
[Screenshot]: tmp/screenshots/failures_test_visit_new_with_param.png
F

Failure:
PostsTest#test_visit_new_with_param [/private/tmp/example-cancancan-2_1_0-ignores-params-of-new/test/system/posts_test.rb:12]:
Expected false to be truthy.


bin/rails test test/system/posts_test.rb:10



Finished in 5.740795s, 0.1742 runs/s, 0.1742 assertions/s.
1 runs, 1 assertions, 1 failures, 0 errors, 0 skips
```
