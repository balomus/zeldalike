function col(a, b)
    -- print(a.type, b.type)

    local a_left = a.x
    local a_top = a.y
    local a_right = a.x + a.w
    local a_bottom = a.y + a.h

    local b_left = b.x
    local b_top = b.y
    local b_right = b.x + b.w
    local b_bottom = b.y + b.h

    if a_top > b_bottom then return false end
    if b_top > a_bottom then return false end
    if a_left > b_right then return false end
    if b_left > a_right then return false end

    return true
end