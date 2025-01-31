function player_update()
    --controls
    if btn(⬅️) then
        player.dx-=player.acc
        player.running=true
        player.flp=true
    end
    if btn(➡️) then
        player.dx+=player.acc
        player.running=true
        player.flp=false
    end
end