from flask import Flask,request,jsonify
import getdata
app = Flask(__name__)

@app.route("/",methods = ['GET','POST'])
def getData():
    input = str(request.args.get("query"))
    ObjgetData = getdata.getDatas()
    aData = ObjgetData.getAllData(input)
    if len(aData):
        response = jsonify({
            "result" : aData,
        })
    else:
        response = jsonify({
            "result" : [],
        })
    return response


app.run("0.0.0.0",debug = True)
        
    