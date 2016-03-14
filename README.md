This project demoes link errors with unit test target, when main target is a dynamic framework with includes static framework as a pod.

Uncomment line `19` in the `Podfile`, then run `bundle exec pod update --no-repo-update` and see how the issue is "fixed".

However, this is not a fix for real project. Apart from linking all the pods to the test target, which is wrong, the resulting unit tests target will not run. When test coverage is enabled, it will output a large number of log messages about duplicated implementations and it will in general just halt during execution and timeout.