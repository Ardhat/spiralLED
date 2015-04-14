# spiralLED

Text display from a string of WS2812 LEDS in a spiral on the Raspberry Pi , no need to cut the string!

Designed for Raspberry Pi A+ and up including Raspberry Pi 2.

Works with an Ardhat which provides level shifting and high current driver, see ardhat.com for more details.


If you want to use it with a bare Raspberry Pi, you can build a level shifter like this http://i.stack.imgur.com/EUVMW.png


and connect it to RPi pin 18 which is the PWM output pin.



Uses DMA code from RPi ws281x Library by Jeremy Garff, modified by Richard Hirst.



Uses code from https://github.com/plan44/messagetorch https://github.com/jgarff/rpi_ws281x https://github.com/richardghirst/rpi_ws281x  https://github.com/pimoroni/unicorn-hat


Installation
-------------

git clone onto RPi and run make

run with ./spiralled


