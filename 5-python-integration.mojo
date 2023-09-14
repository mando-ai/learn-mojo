from python import Python

fn main():
    try:
        let mypython = Python.import_module("pandas")
        print(mypython.DataFrame([1,2,3,4,5]))
    except ImportError:
        print('error importing numpy')
