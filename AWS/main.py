
from tokenize import group
import boto3
import json
cloudtrail_client = boto3.client('cloudtrail')

response = cloudtrail_client.describe_trails(
    trailNameList=[
        'management-events', "Data-Event"
    ],
    includeShadowTrails=True
)


response2 = cloudtrail_client.update_trail(
    Name='Data-Event',
    IncludeGlobalServiceEvents=False,
    IsMultiRegionTrail= False,
    EnableLogFileValidation=False
)

print(json.dumps(response2,indent = 4))
c