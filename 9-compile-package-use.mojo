# command to create compile package : 
# `mojo package package name -o package_with_init.mojopkg`


#by adding module import in __init__.mojo we can import
# package its class without module name example below

from fullname_with_init import FullName


fn main():
    let name = FullName("shubham", "mando")
    print(name.dump())
