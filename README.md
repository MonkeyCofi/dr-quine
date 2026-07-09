# dr-quine

This project involves writing self-replicating code. The quines are implemented in 3 languages: C, Assembly, and Java

It heavily involes the usage of libc functions such as printf, sprintf and fprintf. 

## The quines

### Colleen
This quine just writes the source code into stdout.

### Grace
Creates a file called Grace_kid suffixed by the format of respective coding language which contains the same exact source code as the Grace file

### Sully
Creates a file called Sully_5 which then creates Sully_4 and so on up until Sully_0.