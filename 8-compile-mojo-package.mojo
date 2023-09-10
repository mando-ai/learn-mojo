# command to create compile package : 
# `mojo package package name -o package_name.mojopkg`

from fullname.module import FullName


fn main():
    let name = FullName("shubham", "mando")
    print(name.dump())
