----------------------------------------
--- Discord Whitelist, Made by FAXES ---
----------------------------------------

--- Config ---
notWhitelisted = "Du bist nicht gewhitelistet, bitte finde dich im Supportraum auf dem Teamspeak unter: highv-roleplay ein." -- Message displayed when they are not whitelist with the role
noDiscord = "Du musst deinen Discord aufhaben um dich verifizieren zu können." -- Message displayed when discord is not found

roles = { -- Role nickname(s) needed to pass the whitelist
    "Whitelist",

}


--- Code ---

AddEventHandler("playerConnecting", function(name, setCallback, deferrals)
    local src = source
    deferrals.defer()
    deferrals.update("Checking Permissions")

    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifierDiscord = v
        end
    end

    if identifierDiscord then
        for i = 1, #roles do
            if exports.discord_perms:IsRolePresent(src, roles[i]) then
                deferrals.done()
            else
                deferrals.done(notWhitelisted)
            end
        end
    else
        deferrals.done(noDiscord)
    end
end)