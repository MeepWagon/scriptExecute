local game = remodel.readPlaceFile("test.rbxl")

remodel.createDirAll("src/workspace")

remodel.writeModelFile(game.Workspace.Map, "src/workspace/Map.rbxmx")