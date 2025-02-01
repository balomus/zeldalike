function _update60()
    player_update()
    player_animate()

    local i,j=1,1                                   --to properly support objects being deleted, can't use del() or deli()
    while(objs[i]) do                               --if we used a for loop, adding new objects in object updates would break
        if objs[i]:update() then
            if(i!=j) objs[j]=objs[i] objs[i]=nil    --shift objects if necessary
            j+=1
        else objs[i]=nil end                        --remove objects that have died or timed out
        i+=1                                        --go to the next object (including just added objects)
    end
end