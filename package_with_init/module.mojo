struct FullName:
    var first_name: String
    var last_name: String

    fn __init__(inout self, first_name: String, last_name: String):
        """Initialize a first and last name.
           Arguments:
                    first_name (String): The first name
                    last_name (String): The last name
            Returns: None.

        """
        self.first_name = first_name
        self.last_name = last_name

    fn dump(self):
        """Function to print the full name."""
        print(self.first_name, self.last_name)