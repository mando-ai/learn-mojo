from python import Python

fn main():
    try:
        # import numpy as np here is below line of code
        let np = Python.import_module("numpy")
    except ImportError:
        print('error importing numpy')
