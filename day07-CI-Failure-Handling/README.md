### Failure: CI flaky container test

**Cause**
HTTP test ran before application was ready inside the container.

**Detection**
CI failed with connection reset despite container running.

**Fix**
Implemented retry-based health check instead of fixed sleep.

**Learning**
CI pipelines must wait for service readiness, not assume startup time.