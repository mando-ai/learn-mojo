from python import Python
from python.object import PythonObject

fn main():
    var dictionary = Python.dict()
    dictionary["fruit"] = "apple"
    dictionary["starch"] = "potato"
    var keys: PythonObject = ["fruit", "starch", "protein"]
    
    var N: Int = keys.__len__().__index__()
    print(N, "items")

    for i in range(N):
        if Python.is_type(dictionary.get(keys[i]), Python.none()):
            print(keys[i], "is not in dictionary")
        else:
            print(keys[i], "is included")