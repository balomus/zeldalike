function _draw()
    cls()
    map(0,0)
    spr(player.sp, player.x, player.y, 1, 1, player.flp)

    for o in all(objs) do o:draw() end
end