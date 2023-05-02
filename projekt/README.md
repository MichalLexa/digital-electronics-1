# UART stopwatch

### Team members

* Michal Lexa 
* Roman Křivánek 
* Erik Maděránek 

### Theoretical description and explanation
* UART stands for Universal Asynchronous Receiver/Transmitter. It is a type of hardware interface used for serial communication between two devices. It allows for the transmission and reception of data in a serial format, and is commonly used in microcontrollers, embedded systems, and other electronic devices for communication with other devices or systems. UART uses two data lines, one for transmitting data (TX) and one for receiving data (RX), as well as a common ground reference.

### Hardware description of demo application
* Stopwatch runs on nexis a7 50T board. It uses 7 segment displays to display time. The board sould send signal via serial port after pressing Transmiter button.

### Software description
Put flowchats/state diagrams of your algorithm(s) and direct links to source/testbench files in src and sim folders.

### Component(s) simulation
Write descriptive text and simulation screenshots of your components.

### Instructions
After uploading constrain file to the board the stopwatch should start counting. When you want to send current time via UART push the Transmiter button (center button on the board). 
