while true do
    turtle.select(1)
    if turtle.suckUp() then
        turtle.turnRight()
        turtle.turnRight()
        
        if turtle.getFuelLevel() < 8 then
            turtle.select(16)
            turtle.refuel(1)
            turtle.select(1)
        end
        
        while turtle.forward() do
            if turtle.getFuelLevel() < 8 then
                turtle.select(16)
                turtle.refuel(1)
                turtle.select(1)
            end
            turtle.suckUp()
        end
        
        turtle.turnLeft()
        turtle.turnLeft()
        
        while turtle.forward() do
            if turtle.getFuelLevel() < 8 then
                turtle.select(16)
                turtle.refuel(1)
                turtle.select(1)
            end
        end
        for i=1,15 do
            turtle.select(i)
            turtle.drop()
        end
    end
    sleep(8)
end
