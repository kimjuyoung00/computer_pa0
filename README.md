## Project #0: Command Parser

### *** Due on March 18 (Friday), 24:00 ***

### Goal

Implement a simple string parser to get familiar with PASubmit system.


### Problem Specification

We will implement a MIPS interpreter soon. To that end, you should firstly make a simple program that understands user inputs and commands.

In this project, your task is to **split the input strings into command tokens**. By the C standard, a string is defined as a sequence of characters which is terminated with `\0`. Command tokens are the strings that are obtained by splitting the input string with delimitors which are whitespace characters in this PA. Any heading and trailing whitespaces should be also removed from the command tokens.

For example, if the input string is " Hello   world ", the command tokes are "Hello" and "world". **Note that the input string is split into tokens delimited by whitespaces (' ' in this example), and the tokens do not contain whitespaces**.

Another example string is " add   r1  r2   r3   ". It should be broken into "add", "r1", "r2", and "r3".

The required functionality must be implemented in `parse_command()` function. The user input is passed through `command`. After parsing `command` into tokens, the tokens should be assigned to `tokens[]` in order, which is passed as the function argument. Also, the number of tokens should be assigined to `*nr_tokens` which will be used by the framework.

```c
char *command   --> "  add   r0   r1 r2  "

*nr_tokens = 4
tokens[0]  -->  "add"
tokens[1]  -->  "r0"
tokens[2]  -->  "r1"
tokens[3]  -->  "r2"
tokens[4]... =  NULL
```

### Restrictions

- You **should not use any string manipulation functions from any libraries**. The banned functions include `strtok, strtok_r, strlen, strcpy, fscanf, strdup` and/or similars. This implies that you should implement your own string manipulation functions if it is needed. **You will get 0 point if you use any of them**. Note that `malloc()` and `free()` are not string manipulation functions so you may use it if needed. If unsure, question to the instructor through AjouBb.
- Do not change or redefine `parse_command()` and `main()` functions; use the functions and their arguments as-is.
- Use `isspace()` C library function to check whether the character can be assumed as a whitespace.
- Printing messages to stand output (e.g., `printf()`) is totally okay. However, do not `fprintf(stderr ...)` otherwise the grading system cannot grade your submission properly.
- For all PAs in this class (including this and next ones), you can freely change the code as you want as long as **it does not violate a stated restriction**. For example, you can include as many header files as you want since it is not explicitly prohibited. Also, you can define your own custom functions in addition to the provided ones.


### Logistics

- This is an individual project; you work on the assignement alone.
- You can use **up to 3 slip tokens throughout this semester**.
- The instructor will not answer to questions during the grace period.
- All submission and grading are done automatically through https://sslab.ajou.ac.kr/pasubmit. Please follow the instruction explained in the class.
	- Submit `pa0.c` file. Make sure that you turn in the right file with the designated file name. (90 pts)
	- Explain your parsing strategy on a **1-page PDF document**. (10 pts)
  - No need to turn in the git repository; ignore that in this PA.
- `input` file in the provided code contains the input sequence for the grading.


### Tips and Notes

- Briefly speaking, the overall implementation might be as follows; start scanning from the beginning of `command`, skipping all whitespaces until meet a non-whitespace character. That will be the beginning of the token. Then, continue scanning until meet any whitespace character. That will be the end of the token. Repeat this until entire `command` is scanned. Assign the starting position of each token into `tokens[]` and count `nr_tokens` accordingly.
- Read comments in the skeleton code carefully.
- Make sure every string is terminated with '\0'.
- Post freely on QnA board on AjouBb to question about the project.

Good luck and have fun!
