function slimeupdate(s)
    s.x += s.dx
    s.y += s.dy

    for o in all(objs) do
        if fget(o.spr, 0) then
            if (col(s, o)) then
                s.health -= 1
                o.time = 1
            end
        end
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
        type='slime'
    }
    add(objs,s)
    return s
end