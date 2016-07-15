# Erlang: Convert a float to a string with two decimal digits
:io_lib.format("~.2f", [1234.56789])

# Get the value of an operating-system environment variable
System.get_env("PATH")

# Return the extension component of a file name (so return .exs if given "dave/test.exs")
"dave/test.exs" |> String.split(".") |> Enum.at(-1)

# Return the process’s current working directory
System.cwd

# Convert a string containing JSON into Elixir data structures. (Just find; don’t install)
#  => https://github.com/devinus/poison

# Execute a command in your operating system’s shell
System.cmd("ls", [])

# In the last exercise of Chapter 7, you wrote a span funtion. Use it and list
# comprehensions to return a list of the prime numbers from 2 to n.
