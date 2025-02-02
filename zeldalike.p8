pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include init.lua
#include update.lua
#include draw.lua

#include player_update.lua
#include player_animate.lua
#include shoot.lua
#include slime.lua
#include collision.lua


__gfx__
0000000000aaaa0a00aaaa0a00aaaa0a00aaaa0a000bb00000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000afffa000afffa000afffa000afffa000bb3b0000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000ff1f1000ff1f1000ff1f1000ff1f100bbbb3b000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000ffff0000ffff0000ffff0000ffff0bb7bb7bb00000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700000088800000880000008880000088000bbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000888080000880000088808000088000bbbbbb3b00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000110000001100000011000000110000bbbb3b000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000001010000011000000101000001100000bbbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000aaa0a000aaa0a000aaa0a000aaa0a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000aaaaa000aaaaa000aaaaa000aaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ffff0000ffff0000ffff0000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ffff0000ffff0000ffff0000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000888000008800000088800000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008880800088880000888080008888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000110000001100000011000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000100000001100000001000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000aaa0a000aaa0a000aaa0a000aaa0a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000aafaa000aafaa000aaafa000aafaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000f1f10000f1f10000f1f10000f1f1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ffff0000ffff0000ffff0000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000888000008800000088800000880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008880800088880000888080008888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000110000001100000011000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000100000001100000001000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000880880007707700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000008888888070070070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000660008888888e70000076000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000677600088888e007000760000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000067760000888e0000707600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000660000008e00000076000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444444444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444444444444444464444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444e44444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444444444474444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
444444444444444444447974d4444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444474444444474444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
444444444444b4944644444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444444444444444444449000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666366366666666656666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6555555665355536dd55555665555556000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
655555566535553665dd55dd65555556000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666366636666dd6666566666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666666666366636666d66dd66666656000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5556655555366535555d655565566655000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
55566555553665555556655555566555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666663666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
4140404040404043404040404043404100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4041404140404241434140404040414000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4042404240404040404042404040404100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404041404040404040414040434000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4341404340434043404140414040404100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4140434040414040404043404040404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4042404040414051405052404040404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404052435350434042404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4240404043404053405050404040414000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4043525351525250525251535251404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404042404052424140404040414000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4340404040404051404040414040434300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404340404050404040404040404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4340404140434040404240434040434000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404243404140404041404041404100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4043404040404240414042404140404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
