import json
import jsonpath

def read_locator_from_json(locatoname):
    f=open('/home/chetan/PycharmProjects/RobotAutomation/JSONfiles/element.json')
    response= json.loads(f.read())
    value= jsonpath.jsonpath(response,locatoname)
    return value[0]