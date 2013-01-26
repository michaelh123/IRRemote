
CON              
 _clkmode        = xtal1 + pll16x
 _xinfreq        = 5_000_000
 
OBJ
 magicir : "magicir_010"
 PST           : "Parallax Serial Terminal"   
 
VAR
LONG code1[128], code1len
LONG em[128], lenght
PUB main | i

 ''Uncomment the following lines if you want to get
 ''the code format.
   ' repeat
    ' magicir.setup 'Start up the Parallax Serial Termianl thread in the object
    ' magicir.storecode(0, @code1, @code1len) 'Gets the code. Does not block
    ' magicir.playcodeFormat(@code1,@code1len) 'Blocks until code has been detected
                                              'then prints it


    PST.Start(19200)   
   repeat
    i :=  PST.CharIn
         PST.Char(i)
    if i == "1"
     one
    elseif i == "2"
     two
    elseif i == "3"
     three
    elseif i == "4"
     four
    elseif i == "5"
     five
    elseif i == "6"
     six
    elseif i == "7"
     seven
    elseif i == "8"
     eight
    elseif i == "9"
     nine
    elseif i == "0"
     zero 

 
pub one
em[0] :=%00000000000000000100111111010001
em[1] :=%00000000000000010101100111100011
em[2] :=%00000000000000011010100110100011
em[3] :=%00000000000000111011100010110011
em[4] :=%00000000000001000000100001111110
em[5] :=%00000000000001001110011011010011
em[6] :=%00000000000001010011011010011000
em[7] :=%00000000000010001010001101110011
em[8] :=%00000000000010001110100111110101
em[9] :=%00000000000010101000000001110011
em[10] :=%00000000000010101100111011101011
em[11] :=%00000000000011000101110000100011
em[12] :=%00000000000011001010001111110101
em[13] :=%00000000000011100000110101110011
em[14] :=%00000000000011100101101111011101
em[15] :=%00000000000100011001110100000011
em[16] :=%00000000000100011110001110000101
em[17] :=%00000000001000011011110001100011
em[18] :=%00000000001000100000010000110101
em[19] :=%00000000001000110001011110000011
em[20] :=%00000000001000110110010111111101
em[21] :=%00000000001001101010100001110011
em[22] :=%00000000001001101111011011101100
em[23] :=%00000000001001111101010101000011
em[24] :=%00000000001010000010010100000101
em[25] :=%00000000001010010000001101010011
em[26] :=%00000000001010010100101100101011
em[27] :=%00000000001010100011000101110011
em[28] :=%00000000001010100111111111100010
em[29] :=%00000000001010111000101101000011
em[30] :=%00000000001010111101100110110101
em[31] :=%00000000001011001011100000000011
em[32] :=%00000000001011010000011111010001
em[33] :=%00000000001011011110010011010011
em[34] :=%00000000001011100011010010011000
em[35] :=%00000000100100100010110010110011
em[36] :=%00000000100100100111110001110101
em[37] :=%00000000100100111000011010000011
em[38] :=%00000000100100111101011001001010
em[39] :=%00000000100101011110011010110011
em[40] :=%00000000100101100011010100100010
em[41] :=%00000000100101110001001101110011
em[42] :=%00000000100101110110001100111101
em[43] :=%00000000100110101101000000100011
em[44] :=%00000000100110110001011111110010
em[45] :=%00000000100111001010110100100011
em[46] :=%00000000100111001111101110010000
em[47] :=%00000000100111101000100011000011
em[48] :=%00000000100111101101100010001111
em[49] :=%00000000101000000011101000010011
em[50] :=%00000000101000001000100010000101
em[51] :=%00000000101000111100100110110011
em[52] :=%00000000101001000001000000101011
em[53] :=%00000000101100111110101001100011
em[54] :=%00000000101101000011000011011101
em[55] :=%00000000101101010100010000110011
em[56] :=%00000000101101011001001010100011
em[57] :=%00000000101101110111011101010011
em[58] :=%00000000101101111100011100011000
em[59] :=%00000000101110100000000111100011
em[60] :=%00000000101110100101000110101011
em[61] :=%00000000101110110011000000000011
em[62] :=%00000000101110110111011111010001
em[63] :=%00000000101111000101111000010011
em[64] :=%00000000101111001010010010011000
em[65] :=%00000000101111011011011111110011
em[66] :=%00000000101111100000011001011101
em[67] :=%00000000101111101110010010110011
em[68] :=%00000000101111110011010001110101
em[69] :=%00000000110000000001001011000011
em[70] :=%00000000110000000110000100111110
lenght := %00000000000000000000000001000110
     magicir.playcode(1,@em,@lenght)    
pub two
     em[0] :=%00000000000000000100111111010001
em[1] :=%00000000000000010101100111100110
em[2] :=%00000000000000011010100110100100
em[3] :=%00000000000000111011100010110110
em[4] :=%00000000000001000000100001111110
em[5] :=%00000000000001001110011011010110
em[6] :=%00000000000001010011011010010110
em[7] :=%00000000000010001010001000100110
em[8] :=%00000000000010001111001100111101
em[9] :=%00000000000010100111111100100110
em[10] :=%00000000000010101100111011101000
em[11] :=%00000000000011000101101011010110
em[12] :=%00000000000011001010101111101000
em[13] :=%00000000000011100000110000010110
em[14] :=%00000000000011100101101111011110
em[15] :=%00000000000100011001101110110110
em[16] :=%00000000000100011110110011001100
em[17] :=%00000000001000011011110001100110
em[18] :=%00000000001000100000110101111101
em[19] :=%00000000001000110001011000110110
em[20] :=%00000000001000110110010111111101
em[21] :=%00000000001001100111101101100110
em[22] :=%00000000001001101100101100110001
em[23] :=%00000000001001111010100110000110
em[24] :=%00000000001001111111100101001011
em[25] :=%00000000001010001101011110100110
em[26] :=%00000000001010010010011101100110
em[27] :=%00000000001010100000010110110110
em[28] :=%00000000001010100101010101111101
em[29] :=%00000000001010111000100111110110
em[30] :=%00000000001010111101100110111001
em[31] :=%00000000001011001011100000000110
em[32] :=%00000000001011010000011111010000
em[33] :=%00000000001011011110010011010110
em[34] :=%00000000001011100011010010010110
lenght := %00000000000000000000000000100010
     magicir.playcode(1,@em,@lenght)   
pub three
    em[0] :=%00000000000000000101000100100110
em[1] :=%00000000000000010101101100111000
em[2] :=%00000000000000011010101011111010
em[3] :=%00000000000000111011101000001000
em[4] :=%00000000000001000000100111010001
em[5] :=%00000000000001001110100000101000
em[6] :=%00000000000001010011111111100001
em[7] :=%00000000000010001010001101111000
em[8] :=%00000000000010001111010010010001
em[9] :=%00000000000010101000000001111000
em[10] :=%00000000000010101101000000111111
em[11] :=%00000000000011000101110000101000
em[12] :=%00000000000011001010110100111111
em[13] :=%00000000000011100000110101101000
em[14] :=%00000000000011100101110100110101
em[15] :=%00000000000100011001110100001000
em[16] :=%00000000000100011110111000100001
em[17] :=%00000000001000011011110110111000
em[18] :=%00000000001000100000111011010001
em[19] :=%00000000001000110001011110001000
em[20] :=%00000000001000110110100010100101
em[21] :=%00000000001001100101000100001000
em[22] :=%00000000001001101010001000100001
em[23] :=%00000000001001110111111100011000
em[24] :=%00000000001001111101000000111001
em[25] :=%00000000001010001010110100111000
em[26] :=%00000000001010001111111001010001
em[27] :=%00000000001010011101101000001000
em[28] :=%00000000001010100011001100001101
em[29] :=%00000000001010111000101101001000
em[30] :=%00000000001010111101110001100000
em[31] :=%00000000001011001011100101011000
em[32] :=%00000000001011010000101001111001
em[33] :=%00000000001011011110011000101000
em[34] :=%00000000001011100011011100111111
em[35] :=%00000000100100100010111000001000
em[36] :=%00000000100100100111110111001101
em[37] :=%00000000100100111000011111011000
em[38] :=%00000000100100111101011110100001
em[39] :=%00000000100101011110011010111000
em[40] :=%00000000100101100011011001111010
em[41] :=%00000000100101110001010011001000
em[42] :=%00000000100101110110010010010001
em[43] :=%00000000100110101101000000011000
em[44] :=%00000000100110110010000100111010
em[45] :=%00000000100111001010110100011000
em[46] :=%00000000100111001111110011100101
em[47] :=%00000000100111101000100011001000
em[48] :=%00000000100111101101100111100110
em[49] :=%00000000101000000011101000011000
em[50] :=%00000000101000001000100111011010
em[51] :=%00000000101000111100100110101000
em[52] :=%00000000101001000001100101110101
em[53] :=%00000000101100111110101001011000
em[54] :=%00000000101101000011101000100101
em[55] :=%00000000101101010100010000111000
em[56] :=%00000000101101011001001111111001
em[57] :=%00000000101101110001111111011000
em[58] :=%00000000101101110111000011111001
em[59] :=%00000000101110011010101111001000
em[60] :=%00000000101110011111101110001101
em[61] :=%00000000101110101101100111011000
em[62] :=%00000000101110110010100110100110
em[63] :=%00000000101111000000011010101000
em[64] :=%00000000101111000101011001101100
em[65] :=%00000000101111011011011111101000
em[66] :=%00000000101111100000011110110100
em[67] :=%00000000101111101110011000001000
em[68] :=%00000000101111110011010111001101
em[69] :=%00000000110000000001001011001000
em[70] :=%00000000110000000110001010010000
lenght := %00000000000000000000000001000110
    magicir.playcode(1,@em,@lenght)  
pub four
  em[0] :=%00000000000000000100111111001111
em[1] :=%00000000000000010101100111100010
em[2] :=%00000000000000011010100110100010
em[3] :=%00000000000000111011100010110010
em[4] :=%00000000000001000000100001111101
em[5] :=%00000000000001001110011011010010
em[6] :=%00000000000001010011011010011000
em[7] :=%00000000000010001010001000100010
em[8] :=%00000000000010001111001100111100
em[9] :=%00000000000010100111111100100010
em[10] :=%00000000000010101100111011101010
em[11] :=%00000000000011000101101011010010
em[12] :=%00000000000011001010101111101010
em[13] :=%00000000000011100000110000010010
em[14] :=%00000000000011100101101111011100
em[15] :=%00000000000100011001101110110010
em[16] :=%00000000000100011110110011001000
em[17] :=%00000000001000011011110001100010
em[18] :=%00000000001000100000110101111011
em[19] :=%00000000001000110001011000110010
em[20] :=%00000000001000110110010111111100
em[21] :=%00000000001001100010001111110010
em[22] :=%00000000001001100111010100010000
em[23] :=%00000000001001110101001000010010
em[24] :=%00000000001001111010000111010111
em[25] :=%00000000001010001000000000110010
em[26] :=%00000000001010001100111111110001
em[27] :=%00000000001010011010111001000010
em[28] :=%00000000001010011111111000001001
em[29] :=%00000000001010111000100111110010
em[30] :=%00000000001010111101100110110100
em[31] :=%00000000001011001011100000000010
em[32] :=%00000000001011010000011111010000
em[33] :=%00000000001011011110010011010010
em[34] :=%00000000001011100011010010010111
em[35] :=%00000000100100100010110010110010
em[36] :=%00000000100100100111110001110100
em[37] :=%00000000100100111000011010000010
em[38] :=%00000000100100111101011001001001
em[39] :=%00000000100101011110010101100010
em[40] :=%00000000100101100011010100100010
em[41] :=%00000000100101110001001101110010
em[42] :=%00000000100101110110001100111110
em[43] :=%00000000100110101101000000100010
em[44] :=%00000000100110110001111111100010
em[45] :=%00000000100111001010101111000010
em[46] :=%00000000100111001111101110010000
em[47] :=%00000000100111101000100011000010
em[48] :=%00000000100111101101100010001111
em[49] :=%00000000101000000011101000010010
em[50] :=%00000000101000001000100111010111
em[51] :=%00000000101000111100100110110010
em[52] :=%00000000101001000001100101110010
em[53] :=%00000000101100111110101001100010
em[54] :=%00000000101101000011101000100010
em[55] :=%00000000101101010100010000110010
em[56] :=%00000000101101011001001111110101
em[57] :=%00000000101101101111010000100010
em[58] :=%00000000101101110100001111101010
em[59] :=%00000000101110010111111010110010
em[60] :=%00000000101110011100111001111011
em[61] :=%00000000101110101010110011010010
em[62] :=%00000000101110101111110010011000
em[63] :=%00000000101110111101101011110010
em[64] :=%00000000101111000010101010110010
em[65] :=%00000000101111011011011010010010
em[66] :=%00000000101111100000011001011100
em[67] :=%00000000101111101110010010110010
em[68] :=%00000000101111110011010001110101
em[69] :=%00000000110000000001000101110010
em[70] :=%00000000110000000110000100111100
lenght := %00000000000000000000000001000110

 magicir.playcode(1,@em,@lenght)     
pub five
 em[0] :=%00000000000000000101000100100100
em[1] :=%00000000000000010101100111100001
em[2] :=%00000000000000011010101011110111
em[3] :=%00000000000000111011100010110001
em[4] :=%00000000000001000000100111010001
em[5] :=%00000000000001001110011011010001
em[6] :=%00000000000001010011011111101000
em[7] :=%00000000000010001010001101110001
em[8] :=%00000000000010001111010010010001
em[9] :=%00000000000010100111111100100001
em[10] :=%00000000000010101101000000111100
em[11] :=%00000000000011000101110000100001
em[12] :=%00000000000011001010110100111100
em[13] :=%00000000000011100000110000010001
em[14] :=%00000000000011100101110100101111
em[15] :=%00000000000100011001110100000001
em[16] :=%00000000000100011110111000011011
em[17] :=%00000000001000011011110001100001
em[18] :=%00000000001000100000111011010001
em[19] :=%00000000001000110001011110010001
em[20] :=%00000000001000110110011101010001
em[21] :=%00000000001001011111100001000001
em[22] :=%00000000001001100100100101010100
em[23] :=%00000000001001110010011001010001
em[24] :=%00000000001001110111011101110000
em[25] :=%00000000001010000101010001110001
em[26] :=%00000000001010001010010110001010
em[27] :=%00000000001010011000001010000001
em[28] :=%00000000001010011101001110100100
em[29] :=%00000000001010111000100111110001
em[30] :=%00000000001010111101101100001010
em[31] :=%00000000001011001011100000010001
em[32] :=%00000000001011010000100100100011
em[33] :=%00000000001011011110010011010001
em[34] :=%00000000001011100011010111101000
lenght := %00000000000000000000000000100010
    magicir.playcode(1,@em,@lenght)
  'waitcnt(clkfreq + cnt)

pub six

  em[0] :=%00000000000000000100111111010000
em[1] :=%00000000000000010101100111011000
em[2] :=%00000000000000011010100110100101
em[3] :=%00000000000000111011100010111000
em[4] :=%00000000000001000000100001111101
em[5] :=%00000000000001001110011011001000
em[6] :=%00000000000001010011011010010110
em[7] :=%00000000000010001010001000101000
em[8] :=%00000000000010001111001100111101
em[9] :=%00000000000010100111111100101000
em[10] :=%00000000000010101100111011101001
em[11] :=%00000000000011000101101011001000
em[12] :=%00000000000011001010101010010101
em[13] :=%00000000000011100000110000011000
em[14] :=%00000000000011100101101111011011
em[15] :=%00000000000100011001101110111000
em[16] :=%00000000000100011110101101111000
em[17] :=%00000000001000011011110001101000
em[18] :=%00000000001000100000110000101001
em[19] :=%00000000001000110001011000111000
em[20] :=%00000000001000110110010111111100
em[21] :=%00000000001001011100110010001000
em[22] :=%00000000001001100001110001001001
em[23] :=%00000000001001101111101010011000
em[24] :=%00000000001001110100101001100101
em[25] :=%00000000001010000010100010111000
em[26] :=%00000000001010000111100001111100
em[27] :=%00000000001010010101011011001000
em[28] :=%00000000001010011010011010010101
em[29] :=%00000000001010111000100111111000
em[30] :=%00000000001010111101100110111000
em[31] :=%00000000001011001011100000001000
em[32] :=%00000000001011010000011111010001
em[33] :=%00000000001011011110010011001000
em[34] :=%00000000001011100011010010010110
lenght := %00000000000000000000000000100010
 magicir.playcode(1,@em,@lenght)
 ' waitcnt(clkfreq + cnt) 
pub seven
  em[0] :=%00000000000000000101000100100011
em[1] :=%00000000000000010101100111100001
em[2] :=%00000000000000011011001011101010
em[3] :=%00000000000000111011100010110001
em[4] :=%00000000000001000001000111000010
em[5] :=%00000000000001001110011011010001
em[6] :=%00000000000001010011111111011001
em[7] :=%00000000000010001010001000100001
em[8] :=%00000000000010001111010010010001
em[9] :=%00000000000010100111111100100001
em[10] :=%00000000000010101101000000111101
em[11] :=%00000000000011000101110000100001
em[12] :=%00000000000011001010110100111110
em[13] :=%00000000000011100000110000010001
em[14] :=%00000000000011100110010100100011
em[15] :=%00000000000100011001101110110001
em[16] :=%00000000000100011110111000011001
em[17] :=%00000000001000011011110001100001
em[18] :=%00000000001000100000111011010001
em[19] :=%00000000001000110001011000110001
em[20] :=%00000000001000110110011101010001
em[21] :=%00000000001001011010000011010001
em[22] :=%00000000001001011111001100110101
em[23] :=%00000000001001101100111011100001
em[24] :=%00000000001001110001111111111101
em[25] :=%00000000001001111111110100000001
em[26] :=%00000000001010000100111000010110
em[27] :=%00000000001010010010101100010001
em[28] :=%00000000001010010111110000101111
em[29] :=%00000000001010111000100111110001
em[30] :=%00000000001010111101101100000111
em[31] :=%00000000001011001011100000010001
em[32] :=%00000000001011010001000100010101
em[33] :=%00000000001011011110010011010001
em[34] :=%00000000001011100011010111101001
lenght := %00000000000000000000000000100010
 magicir.playcode(1,@em,@lenght)
  'waitcnt(clkfreq + cnt) 
pub eight
em[0] :=%00000000000000000101000100100100
em[1] :=%00000000000000010101100111100101
em[2] :=%00000000000000011010100110100010
em[3] :=%00000000000000111011100010110101
em[4] :=%00000000000001000000100111010001
em[5] :=%00000000000001001110011011010101
em[6] :=%00000000000001010011011111101011
em[7] :=%00000000000010001010001000100101
em[8] :=%00000000000010001111001100111101
em[9] :=%00000000000010100111111100100101
em[10] :=%00000000000010101101000000111101
em[11] :=%00000000000011000101101011010101
em[12] :=%00000000000011001010101111101100
em[13] :=%00000000000011100000110000010101
em[14] :=%00000000000011100110010100100011
em[15] :=%00000000000100011001101110110101
em[16] :=%00000000000100011110110011001000
em[17] :=%00000000001000011011110001100101
em[18] :=%00000000001000100000110101111110
em[19] :=%00000000001000110001011000110101
em[20] :=%00000000001000110110011101001111
em[21] :=%00000000001001010111010100010101
em[22] :=%00000000001001011100011000101011
em[23] :=%00000000001001101010001100100101
em[24] :=%00000000001001101111110000110101
em[25] :=%00000000001001111101000101000101
em[26] :=%00000000001010000010101001010000
em[27] :=%00000000001010001111111101010101
em[28] :=%00000000001010010101000001110101
em[29] :=%00000000001010111000100111110101
em[30] :=%00000000001010111101101100001000
em[31] :=%00000000001011001011100000000101
em[32] :=%00000000001011010000100100100011
em[33] :=%00000000001011011110010011010101
em[34] :=%00000000001011100011110111011100
em[35] :=%00000000100100100010110010110101
em[36] :=%00000000100100100111110111001000
em[37] :=%00000000100100111000011010000101
em[38] :=%00000000100100111101011110011100
em[39] :=%00000000100101011110010101100101
em[40] :=%00000000100101100011011001110100
em[41] :=%00000000100101110001001101110101
em[42] :=%00000000100101110110010010001111
em[43] :=%00000000100110101101000000100101
em[44] :=%00000000100110110001111111100011
em[45] :=%00000000100111001010101111000101
em[46] :=%00000000100111001111110011100010
em[47] :=%00000000100111101000100011000101
em[48] :=%00000000100111101101100010010000
em[49] :=%00000000101000000011101000010101
em[50] :=%00000000101000001000100111010111
em[51] :=%00000000101000111100100110100101
em[52] :=%00000000101001000001101011000101
em[53] :=%00000000101100111110101001100101
em[54] :=%00000000101101000011101000100011
em[55] :=%00000000101101010100010000110101
em[56] :=%00000000101101011001001111110100
em[57] :=%00000000101110001111111110000101
em[58] :=%00000000101110010101000010011100
em[59] :=%00000000101110111000101101100101
em[60] :=%00000000101110111101101100110000
em[61] :=%00000000101111001011100110000101
em[62] :=%00000000101111010000100101001000
em[63] :=%00000000101111011110011001000101
em[64] :=%00000000101111100011011101100011
em[65] :=%00000000110000000111000011010101
em[66] :=%00000000110000001100000111110100
em[67] :=%00000000110000011001111011110101
em[68] :=%00000000110000011111100000000100
em[69] :=%00000000110000101100110100010101
em[70] :=%00000000110000110001110011011000
lenght := %00000000000000000000000001000110
 magicir.playcode(1,@em,@lenght)
 ' waitcnt(clkfreq + cnt) 

pub nine
 em[0] :=%00000000000000000100111111010001
em[1] :=%00000000000000010101100111100011
em[2] :=%00000000000000011010100110100010
em[3] :=%00000000000000111011100010110011
em[4] :=%00000000000001000000100001111101
em[5] :=%00000000000001001110011011010011
em[6] :=%00000000000001010011011010011000
em[7] :=%00000000000010001010001000100011
em[8] :=%00000000000010001111001100111110
em[9] :=%00000000000010100111111100100011
em[10] :=%00000000000010101100111011101100
em[11] :=%00000000000011000101101011010011
em[12] :=%00000000000011001010101111101100
em[13] :=%00000000000011100000110000010011
em[14] :=%00000000000011100101101111011110
em[15] :=%00000000000100011001101110110011
em[16] :=%00000000000100011110101101110110
em[17] :=%00000000001000011011110001100011
em[18] :=%00000000001000100000110101111110
em[19] :=%00000000001000110001011000110011
em[20] :=%00000000001000110110010111111110
em[21] :=%00000000001001010100100101010011
em[22] :=%00000000001001011001101001110010
em[23] :=%00000000001001100111011101110011
em[24] :=%00000000001001101100011100110110
em[25] :=%00000000001001111010010110000011
em[26] :=%00000000001001111111010101010001
em[27] :=%00000000001010001101001110100011
em[28] :=%00000000001010010010001101101100
em[29] :=%00000000001010111000100111110011
em[30] :=%00000000001010111101100110110110
em[31] :=%00000000001011001011100000010011
em[32] :=%00000000001011010000011111010000
em[33] :=%00000000001011011110010011010011
em[34] :=%00000000001011100011010010011001
em[35] :=%00000000100100100010110010110011
em[36] :=%00000000100100100111110001110110
em[37] :=%00000000100100111000011010000011
em[38] :=%00000000100100111101011001001010
em[39] :=%00000000100101011110010101100011
em[40] :=%00000000100101100011010100100100
em[41] :=%00000000100101110001001101110011
em[42] :=%00000000100101110110001100111110
em[43] :=%00000000100110101101000000100011
em[44] :=%00000000100110110001111111100010
em[45] :=%00000000100111001010101111010011
em[46] :=%00000000100111001111101110010001
em[47] :=%00000000100111101000100011010011
em[48] :=%00000000100111101101100010010001
em[49] :=%00000000101000000011101000010011
em[50] :=%00000000101000001000100111011001
em[51] :=%00000000101000111100100110110011
em[52] :=%00000000101001000001100101110010
em[53] :=%00000000101100111110101001100011
em[54] :=%00000000101101000011101000100011
em[55] :=%00000000101101010100010000110011
em[56] :=%00000000101101011001001111110110
em[57] :=%00000000101110001101001111000011
em[58] :=%00000000101110010010001110010001
em[59] :=%00000000101110110101111001100011
em[60] :=%00000000101110111010111101110110
em[61] :=%00000000101111001000110111010011
em[62] :=%00000000101111001101110110010000
em[63] :=%00000000101111011011101010010011
em[64] :=%00000000101111100000101001011001
em[65] :=%00000000110000000111000011100011
em[66] :=%00000000110000001100000010100011
em[67] :=%00000000110000011001111011110011
em[68] :=%00000000110000011110111010111110
em[69] :=%00000000110000101100101111000011
em[70] :=%00000000110000110001101110000110
lenght := %00000000000000000000000001000110
 magicir.playcode(1,@em,@lenght)
 ' waitcnt(clkfreq + cnt) 

pub zero
em[0] :=%00000000000000000101000100100101
em[1] :=%00000000000000010101100111011100
em[2] :=%00000000000000011010100110100100
em[3] :=%00000000000000111011100010111100
em[4] :=%00000000000001000000100001111101
em[5] :=%00000000000001001110011011001100
em[6] :=%00000000000001010011011010010100
em[7] :=%00000000000010001010001101111100
em[8] :=%00000000000010001111001100111110
em[9] :=%00000000000010100111111100011100
em[10] :=%00000000000010101101000000111101
em[11] :=%00000000000011000101110000011100
em[12] :=%00000000000011001010101111101001
em[13] :=%00000000000011100000110101101100
em[14] :=%00000000000011100101110100101111
em[15] :=%00000000000100011001110100001100
em[16] :=%00000000000100011110110011001011
em[17] :=%00000000001000011011110110111100
em[18] :=%00000000001000100000110101111101
em[19] :=%00000000001000110001011110001100
em[20] :=%00000000001000110110011101010000
em[21] :=%00000000001001101101001011011100
em[22] :=%00000000001001110010001010100101
em[23] :=%00000000001010000000000011111100
em[24] :=%00000000001010000101000010111101
em[25] :=%00000000001010010010111100001100
em[26] :=%00000000001010010111111011010101
em[27] :=%00000000001010100101110100101100
em[28] :=%00000000001010101010110011110001
em[29] :=%00000000001010111000101101001100
em[30] :=%00000000001010111101101100001101
em[31] :=%00000000001011001011100000001100
em[32] :=%00000000001011010000011111010001
em[33] :=%00000000001011011110010011001100
em[34] :=%00000000001011100011010010010100
lenght := %00000000000000000000000000100010
  magicir.playcode(1,@em,@lenght)
 ' waitcnt(clkfreq + cnt) 


  