furni=8
while true do
    dropAmt = 0
    multi = 1
    turtle.select(1)
    data = turtle.getItemDetail()
    if data ~= nil then
        dropAmt = math.floor(data.count/furni)
        if dropAmt == 0 then
            dropAmt = 1
        end
    elseif turtle.suck() then
        dataa = turtle.getItemDetail()
        dropAmt = math.floor(dataa.count/furni)      
        if dropAmt == 0 then
            dropAmt = 1
        end
    end
    
    if dropAmt ~= 0 then
        multi = multi+dropAmt
        turtle.turnRight()
        turtle.turnRight()
        turtle.dropDown(dropAmt)
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
            turtle.dropDown(dropAmt)
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
    end
    
    sleep(8*multi)
end
