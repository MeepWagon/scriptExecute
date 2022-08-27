local roact = require(game.ReplicatedStorage.Packages["roact"]) ; local e = roact.createElement
local Hooks = require(game.ReplicatedStorage.Packages["roact-hooks"])

local function Body(props, hooks)
    return e("ScreenGui", {}, {
        Frame = e("Frame", {
            AnchorPoint = Vector2.new(0,1),
            Position = UDim2.new(0.027, 0,0.978, 0),
            Size = UDim2.new(0, 342,0, 196),
            Style = Enum.FrameStyle.RobloxRound
        }, {
            UIScale = e("UIScale", {
                Scale = props.Scale
            }),
            TextBox = e("TextBox", {
                Size = UDim2.new(0, 316,0, 170),
                Position = UDim2.new(0.015, 0,0.026, 0),
                TextWrapped = true,
                BackgroundColor3 = Color3.new(255, 255, 255),
                Text = "Paste script here!"
            })
        }),
        textbutton = e("TextButton", {
            Position = props.Position,
            Text = props.Text,
            Size = UDim2.new(0, 40,0, 40),
            TextScaled = true,
            [roact.Event.Activated] = props[roact.Event.Activated]
        })
    })
end

return Hooks.new(roact)(Body, {
    defaultProps = {
        Position = UDim2.new(0.027, 0,0.68, 0)
    }
})