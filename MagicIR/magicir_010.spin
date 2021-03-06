{{

┌──────────────────────────────────────────┐
│ MagicIR_010                              │
│ Author: Nick McClanahan                  │               
│ Copyright (c) 2010 Gadget Gangster       │               
│ See end of file for terms of use.        │                
└──────────────────────────────────────────┘

MagicIR is a universal IR record & playback object.  To use:
1 - Connect an IR receiver to the Propeller
This is usually a 3 pin device with a plastic lens on one side.
If it's a 5V device, be sure to connect the signal line through a 1k-10k inline resistor

2 - Connect an IR LED to the Propeller
You'll probably want to use a current limiting resistor, if the LED is small.

Usage is suggested at 80MHz. If using a slower clock, you should change the timeoutmax var below.
Timeoutmax is the number of ticks before the object gives up on waiting for a transition.

A video demo of the demo code is at http://www.vimeo.com/14551986 

Each method is documented below
}}
CON              
 _clkmode        = xtal1 + pll16x
 _xinfreq        = 5_000_000

OBJ              
  Freq : "Synth"
   PST           : "Parallax Serial Terminal"    'added to display formating on
                                                 'serial terminal
    
var              
  long recordflag

PUB storecode(inpin, codeptr, lengthptr) | i


'' storecode stores a code of up to 128 transitions starting at codeptr
'' Also give it 1 long to store the number of transitions at lengthptr
'' Storecode will hold up playback until the recording is complete or
'' the timeout has been reached (timeoutmax)
'' Example Usage:
'' OBJ
''   magicir : "magicir_010"
'' VAR
''   LONG code1[128], code1len
'' PUB
''   magicir.storecode(1,@code1, @code1len)

timerpntr := codeptr
recordptr := @recordflag
transpntr := lengthptr
Pin := |< inpin

longfill(codeptr, 0, 128)
recordflag := %1
cognew(@record, 0)

pub setup
 PST.Start(19200)


PUB playcodeFormat(codeptr, lengthptr) | i, start, lowest, curmax, translen, m 



'' Print a code that has been stored at codeptr with a length stored at lengthptr
'' Example Usage:
'' OBJ
''   magicir : "magicir_010"
'' VAR
''   LONG code1[128], code1len
'' PUB
''   magicir.storecode(1,@code1, @code1len)
''   magicir.playcodeFormat(0,@code1, @code1len)


        repeat while recordflag == %1  
           
        translen := long[lengthptr][0]
        pst.Newline
        repeat i from 0 to translen
         pst.Str(String("em["))
         pst.Dec(i)
         pst.Str(String("] :=%"))
         'pst.Dec(long[codeptr][i])
         pst.Bin(long[codeptr][i],32)
         pst.Newline

        pst.Str(String("length := %"))
        pst.Bin(translen,32)

PUB playcode(outpin, codeptr, lengthptr) | i, start, lowest, curmax, translen, m 

'' Play a code that's been stored at codeptr with a length stored at lengthptr
'' Example Usage:
'' OBJ
''   magicir : "magicir_010"
'' VAR
''   LONG code1[128], code1len
'' PUB
''   magicir.storecode(1,@code1, @code1len)
''   magicir.playcode(0,@code1, @code1len)

Freq.Synth("A",outpin, 38_000)
dira[outpin]~
translen := long[lengthptr][0]
start := cnt
repeat i from 0 to translen
    !dira[outpin]
    waitcnt(start + long[codeptr][i])

dira[outpin]~


DAT

              ORG 0
record        waitpne   Pin,Pin                         ' wait until pin goes low
              mov       starttime, cnt                  ' we've started the timer
              mov       totaltrans, #0

nextcell      waitpeq   Pin, Pin                        ' signal is done (gone high)
              mov       t1, cnt                         ' load t1 with current time
              sub       t1, starttime                   ' subtract starting time from it
              wrlong    t1, timerpntr
              add       timerpntr, #4                   ' move the timerpointer to the next long
              add       totaltrans, #1                  ' note that we've added a transition
              mov       timeoutcurrent, cnt             ' prepare for calculating timeout
              add       timeoutcurrent, timeoutmax      ' start with cnt and add max timeout


pauseloop     cmp       timeoutcurrent, cnt     wc      ' if current timout has exceeded the system clock, set the C flag
    if_c      jmp       #exit                           ' current timeout exceeded, jump to exit
                                                        
              test      Pin, ina                wc      ' no worries on timeout anymore, just check for a state change on ina
    if_c      jmp       #pauseloop                      ' if there's no statechange, jump back to pauseloop    
          
              mov       t1, cnt                         ' getting here means there's a state change
              sub       t1, starttime                   ' see how long it's been since the first signal
              wrlong    t1, timerpntr                   ' write that to the next long
              add       timerpntr, #4                   ' move over 4 bytes to the next long
              add       totaltrans, #1                  ' note the next transition
              djnz      transmax, #nextcell             ' have we reached the max # of transitions?
   
exit          sub       totaltrans, #1                  ' exit routine
              wrlong    totaltrans, transpntr
              mov       t1, #0
              wrlong    t1, recordptr



timeoutmax                      long            10_120_000              ' how many ticks until I give up on new signals
transmax                        byte            64 
Pin                             long            0-0
timerpntr                       long            0-0                     ' address of the transition times
transpntr                       long            0-0                     ' address of the max length
recordptr                       long            0-0                     ' address for the record status (blank when complete)
t1                              res             1
starttime                       res             1
transtat                        res             1
timeoutcurrent                  res             1
totaltrans                      res             1

{{
┌──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                   TERMS OF USE: MIT License                                                  │                                                            
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation    │ 
│files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,    │
│modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software│
│is furnished to do so, subject to the following conditions:                                                                   │
│                                                                                                                              │
│The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.│
│                                                                                                                              │
│THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE          │
│WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR         │
│COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,   │
│ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                         │
└──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
}}           