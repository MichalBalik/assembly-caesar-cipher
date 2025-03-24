# assembly-caesar-cipher
Caesar-cipher in assembly


This program is designed to simplify the creation of the **Caesar cipher**, which is based on shifting letters by a given amount (keyboard numbers 0 to 7). When the alphabet is shifted past the last letter, it wraps around. This cipher can work on the full alphabet or a simplified alphabet (the simplified alphabet, used in this project, includes the characters "abcdef"). Created in **CPUEmul_1.3.1.jar**.

## Program Flow

Upon starting the program, the word **"CESS"** will light up on the displays, representing the Caesar cipher and indicating that the user can begin using the program. The user selects the desired shift (0 – 7) by pressing the corresponding number on the board (if no shift is provided, the program will default to a shift of 1). The user can then press any of the letters displayed on the board, and the program will show the encrypted letter based on the most recent shift entered. The shift can be changed at any time by pressing the corresponding number on the keyboard.

After successfully encrypting a letter, the program will display the following on the four displays:
- The first display will show the input letter.
- The second display will show the shift value used.
- The third display will show a dash `-` separating the input from the output.
- The fourth display will show the encrypted letter.

The program can be terminated by pressing the **END** button, and it can be reset by pressing the **RESET** button.

## Button Functions

- Buttons **0 to 7** are used to set the shift value.
- Buttons **A, B, C, D, E, F** are used to select the letter to encrypt.
- The **END** button is used to terminate the program.
- The **RESET** button is used to reset the program.

