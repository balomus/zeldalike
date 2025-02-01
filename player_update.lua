function player_update()
    --controls
    if btn(⬅️) then
        player.running=true
        player.flp=true
        player.x-=player.speed
        player.dir='left'
    end

    if btn(➡️) then
        player.running=true
        player.flp=false
        player.x+=player.speed
        player.dir='right'
    end

    if btn(⬆️) then
        player.running=true
        player.y-=player.speed
        player.dir='up'
    end

    if btn(⬇️) then
        player.running=true
        player.y+=player.speed
        player.dir='down'
    end
    
    if player.running
    and not btn(⬅️)
    and not btn(➡️)
    and not btn(⬆️)
    and not btn(⬇️) then
        player.running=false
    end


    if btnp(❎) then
        local dx=0
        local dy=0
        
        if (btn(⬅️)) dx=-2
        if (btn(➡️)) dx=2
        if (btn(⬆️)) dy=-2
        if (btn(⬇️)) dy=2
        if (not btn(⬅️) and not btn(➡️) and not btn(⬆️) and not btn(⬇️)) then
            if (player.dir=='left') dx=-2
            if (player.dir=='right') dx=2
            if (player.dir=='up') dy=-2
            if (player.dir=='down') dy=2
        end

        newbullet(player.x, player.y, 4, 4, dx, dy)
    end
end