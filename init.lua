objs={}

function objdraw(o)
    spr(o.spr, o.x, o.y)
end

function _init()
    player={
        sp=1,
        x=59,
        y=59,
        w=8,
        h=8,
        flp=false,
        dir='down',
        speed=0.75,
        anim=0,
        running=false,
        health=3,
        maxhealth=3
    }

    newslime(100,100,8,8,0,0)
    -- newbullet(100,100,0,0,0,0)

    --map limits
    map_start=0
    map_end=1024
end

