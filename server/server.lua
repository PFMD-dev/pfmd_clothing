ESX = nil
ESX = exports["es_extended"]:getSharedObject()
lib.locale()
local resource = GetCurrentResourceName()
local GetCurrentResourceName = GetCurrentResourceName()



local resource = GetCurrentResourceName
local versionData = GetResourceMetadata(resource, 'version')
local gitRepo = 'https://raw.githubusercontent.com/PFMD-dev/pfmd_cloathing/master/fxmanifest.lua'
function versionCheck(error, response, headers)
    local response = tostring(response)
    for line in response:gmatch("([^\n]*)\n?") do
        if line:find('^version ') then
            repoVersion = line:sub(10, (line:len(line) - 1))
            break
        end
    end

    if versionData < repoVersion then
        print(string.format("New version is available: ^1%s^7, current version: ^3%s^0", repoVersion, versionData))
    else
        print(repoVersion)
    end
end

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == 'pfmd_cloathing' or resourceName == GetCurrentResourceName then
        PerformHttpRequest(gitRepo, versionCheck, "GET")
    end
end)
