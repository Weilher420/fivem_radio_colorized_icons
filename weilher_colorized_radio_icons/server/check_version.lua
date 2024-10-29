local function CheckVersion()
    local color = {
        red = "^1",
        green = "^2",
        yellow = "^3",
        blue = "^4",
        violet = "^5",
        cyan = "^6",
        gray = "^7",
    }
    
    local resource_name = color.red .. "[weilher_colorized_radio_icons]"
    local github_link = "https://github.com/Weilher/fivem_radio_colorized_icons"
    
    PerformHttpRequest('https://raw.githubusercontent.com/Weilher420/fivem_radio_colorized_icons/main/version.txt', function(err, newestVersion, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not newestVersion then 
            print("Currently unable to run a version check.") 
            return 
        end
        
        newestVersion = newestVersion:gsub("[\r\n]", "")

        if newestVersion ~= currentVersion then
            local messages = {
                color.yellow .. " Current version: " .. currentVersion,
                color.green .. " Latest version: " .. newestVersion,
                color.red .. " Please update from: " .. github_link
            }
            
            print(resource_name .. table.concat(messages, color.gray .. "\n" .. resource_name))
        end
    end)
end

CheckVersion()
