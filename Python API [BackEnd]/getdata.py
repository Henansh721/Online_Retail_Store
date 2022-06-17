from connections import mysql
class getDatas(object):
    def __init__(self):
        self.connect = mysql.connect()
        self.cursor = self.connect.cursor()
    
    def getAllData(self,string):
        self.cursor.execute(string)
        self.connect.commit()
        aData = self.cursor.fetchall()
        return aData