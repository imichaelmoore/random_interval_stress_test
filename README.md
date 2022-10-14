# random_interval_stress_test

This container wraps `stress-ng` to run with arbitrary options for a random period of time, then wait a random period of time.

It is fully configurable with environment variables:

The random interval range for how long the stress test will actually run are configured with `RUNNING_MIN_TIME` and `RUNNING_MAX_TIME`.

The random interval range for how long the wait period before stress tests are run are configured with `SLEEP_MIN_TIME` and `SLEEP_MAX_TIME`.

You can pass arguments to `stress-ng` with `STRESS_NG_ARGUMENTS`.  The default is to run a CPU stressor on all cores (`--cpu 0`)

# Usage

This command will run a CPU stressor on all cores for a random time between 30 and 200 seconds, then wait for a random period between 30 and 200 seconds, and then do it again (with different random intervals).  It will keep going until you kill the container.

`sudo docker run -e RUNNING_MIN_TIME=30 -e RUNNING_MAX_TIME=200 -e SLEEP_MIN_TIME=30 -e SLEEP_MAX_TIME=200 -e STRESS_NG_ARGUMENTS='--cpu 0' -ti mmoores1/random_interval_stress_test:0.1`

