function _draw()
    cls()
    map(0,0)
    spr(player.sp, player.x, player.y, 1, 1, player.flp)

    -- rect(player.x, player,y, (player.x + player.w), (player.y + player.h), 7)

    for o in all(objs) do o:draw() end

    for i=1, player.maxhealth do
        local sp=50
        if (i>player.health) sp=51
        spr(sp, i*9, 5)
    end
end