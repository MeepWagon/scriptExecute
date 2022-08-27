local roact = require(game.ReplicatedStorage.Packages.roact) ; local e = roact.createElement
local spring = require(game.ReplicatedStorage.Packages["roact-spring"])
local Hooks = require(game.ReplicatedStorage.Packages["roact-hooks"])

local Body = require(script.Body)

local toggle = false

local States = {
    ["true"] = UDim2.new(0.027, 0,0.568, 0),
    ["false"] = UDim2.new(0.027, 0,0.901, 0)
}

local function button(props, hooks)
    local styles, api = spring.useSpring(hooks, function()
        return {Scale = 1, Position = States["true"]}
    end)

    local connection = hooks.useValue()

    return e(Body, {
        Scale = styles.Scale,
        Position = styles.Position,
        Text = "X",
        [roact.Event.Activated] = function()
            api.start({
                Position = States[tostring(toggle)],
                Scale = if toggle then 1 else 0,
            })
            toggle = not toggle
        end
    })
end

return e(Hooks.new(roact)(button))