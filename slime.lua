function slimeupdate(s)

    local dx = player.x - s.x
    local dy = player.y - s.y

    local mag = sqrt(dx*dx + dy*dy)
    if mag > 0 then
        dx = dx / mag
        dy = dy / mag
    end

    s.x += dx * s.speed
    s.y += dy * s.speed

    -- s.dx = player.x - s.x
    -- s.dy = player.y - s.y

    -- s.x += s.dx
    -- s.y += s.dy

    for o in all(objs) do
        if fget(o.spr, 0) then
            if (col(s, o)) then
                s.health -= 1
                o.time = 1
            end
        end
    end

    if (col(s, player)) then
        player.health -= 1
        player.x += dx * 10
        player.y += dy * 10
    end

    
    return s.health > 0
end

function newslime(x,y,w,h,dx,dy)
    local s = {
        x=x,y=y,dx=dx,dy=dy,
        w=w,h=h,
        -- time=60,
        update=slimeupdate,
        spr=5,draw=objdraw,
        health=3,
        type='slime',
        speed=0.25
    }
    add(objs,s)
    return s
end