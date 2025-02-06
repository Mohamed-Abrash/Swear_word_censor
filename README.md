# Text censoring tool
This tool censors swear words in a text file by replacing them with asterisks (*). It uses a combination of Python and SQL to achieve this.

How it Works
- The Python code reads a text file and converts it into a list of words.
- It connects to a MySQL database and creates a table to store the list of words.
- It also creates a table with a reference list of swear words.
- An SQL query cross-references the two tables and censors the swear words by replacing them with asterisks.
- The Python code then saves the censored text into a new text file.
