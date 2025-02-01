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

    if btnp(❎) then
        
    end

    if player.running
    and not btn(⬅️)
    and not btn(➡️)
    and not btn(⬆️)
    and not btn(⬇️) then
        player.running=false
    end
end