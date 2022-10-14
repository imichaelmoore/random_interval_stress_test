FROM alpine:latest
RUN apk add --no-cache stress-ng bash

# The random interval range for how long the stress test will actually run
ENV RUNNING_MIN_TIME 30
ENV RUNNING_MAX_TIME 200

# The random interval range for how long the wait period before stress tests are run
ENV SLEEP_MIN_TIME 300
ENV SLEEP_MAX_TIME 900

# Any arguments you want to pass to stress-ng
ENV STRESS_NG_ARGUMENTS "--cpu 0"

# CPU and Memory Stressor - For random interval between 30 and 200 seconds.  
# Then waits randomly between 300 and 900 seconds before starting again.
COPY go.bash /go.bash
CMD /bin/bash /go.bash