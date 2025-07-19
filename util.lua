function deleteRoute(name)
    if data.raw["space-connection"][name] then
        data.raw["space-connection"][name] = nil
    end
end
