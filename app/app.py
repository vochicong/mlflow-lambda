import sys
def handler(event, context):
    return 'Hello Lambda/Python' + sys.version + '!'