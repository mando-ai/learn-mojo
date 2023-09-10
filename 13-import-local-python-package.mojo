from python import Python

fn main():
    Python.add_to_path("path/to/module")
    let mypython = Python.import_module("mypython")

    let c = mypython.my_algorithm(2, 3)
    print(c)