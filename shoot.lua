function bulletupdate(b)
    b.x += b.dx
    b.y += b.dy
    b.time -= 1

    spover=mget(b.x,b.y)
    print('hello')
    return b.time > 0
end

function newbullet(x,y,w,h,dx,dy)
    local b = {
        x=x,y=y,dx=dx,dy=dy,
        w=w,h=h,
        time=60,
        update=bulletupdate,
        spr=49,draw=objdraw,
        type='bullet'
    }
    add(objs,b)
    return b
end