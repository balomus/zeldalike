function player_animate()
    if player.running then

        if player.dir=='left' or player.dir=='right' then
            if time()-player.anim>.1 then
                player.anim=time()
                player.sp+=1
                if player.sp<1 or player.sp>4 then 
                    player.sp=1
                end
            end
        end

        if player.dir=='up' then
            if time()-player.anim>0.1 then
                player.anim=time()
                player.sp+=1
                if player.sp<17 or player.sp>20 then
                    player.sp=17
                end
            end
        end

        if player.dir=='down' then
            if time()-player.anim>0.1 then
                player.anim=time()
                player.sp+=1
                if player.sp<33 or player.sp>36 then
                    player.sp=33
                end
            end
        end

    else
        if player.dir=='left' or player.dir=='right' then
            player.sp=2
        end

        if player.dir=='up' then
            player.sp=18
        end

        if player.dir=='down' then
            player.sp=34
        end
    end
end