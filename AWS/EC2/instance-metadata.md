### Instance Meta-Data

Instance metadata is data about your instance that you can use to configure or manage the running instance. Instance metadata is divided into categories, for example, host name, events, and security groups.
    - Instance Properties
    - Visible from Guest Operating System
    - accessible from 169.254.169.254/latest/meta-data/
        - v1 curl http://169.254.169.254/latest/meta-data/  ( less secure because no token is required)
        - v2 TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` \
        && curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/

#### Instance User-data
    - Custom Parameters
    - Use to run linux or powershell script
    - Executed once upon instance launch
    - 