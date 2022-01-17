import json, boto3,os, sys, uuid
from urllib.parse import unquote_plus
from datetime import datetime

s3_client = boto3.client('s3')

def handler(event, context):
    some_text = "testing123"
    #put the bucket name you create in step 1
    bucket_name = "mybuckname-app-appname-dev"
    date = datetime.now().strftime("%Y_%m_%d-%I:%M:%S_%p")
    file_name = (f"filename_{date}.html")
    print(f"filename_{date}.html")
    lambda_path = "/tmp/" + file_name
    s3_path = "output/" + file_name
    os.system('echo testing... >'+lambda_path)
    s3 = boto3.resource("s3")
    s3.meta.client.upload_file(lambda_path, bucket_name, file_name)

    return {
        'statusCode': 200,
        'body': json.dumps('i am creating file and pushed to S3:'+s3_path)
    }
