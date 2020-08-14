--[[
    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

    Author: Pietro di Caprio - Prometheus Devs
    Repository: https://github.com/PrometheusDevs/pd_teleport
]]

local player = nil
local playerLoc = nil

Citizen.CreateThread(function ()
    player = GetPlayerPed(-1)
    playerLoc = GetEntityCoords(player)

    for k,v in pairs(Config.Teleports) do
        if v.Blip ~= nil and v.Blip.Display ~= 0 then
            local blip = AddBlipForCoord(v.Blip.Pos.x, v.Blip.Pos.y, v.Blip.Pos.z)

            SetBlipSprite (blip, v.Blip.Sprite)
            SetBlipScale  (blip, v.Blip.Scale)
            SetBlipColour (blip, v.Blip.Color)
            SetBlipDisplay(blip, v.Blip.Display)
            SetBlipAsShortRange(blip, v.Blip.AsShortRange)

            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.Blip.Name)
            EndTextCommandSetBlipName(blip)
        end
    end

    doJob()
end)

function doJob()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        playerLoc = GetEntityCoords(player)

        for k,value in pairs(Config.Teleports) do
            if value.Marker.VisibilityDistance > 0 then
                if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, value.Marker.Pos.x, value.Marker.Pos.y, value.Marker.Pos.z, value.Marker.VisibilityDistance) then
                    DrawMarker(value.Marker.Type, value.Marker.Pos.x, value.Marker.Pos.y, value.Marker.Pos.z, 0,0,0, 0,0,0, 0.6,0.6,0.6, 
                        value.Marker.Color.r, value.Marker.Color.g, value.Marker.Color.b, value.Marker.Color.a, 0, 0, 0, 0)
                end
            end
            
            if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, value.Marker.Pos.x, value.Marker.Pos.y, value.Marker.Pos.z, value.Marker.EnteringDistance) then
                showPerssKeyAlert(_U('PressKeyNotification'))
                if IsControlJustReleased(1, Config.key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        if value.CanEnterWithVehicle then
                            SetEntityCoords(GetVehiclePedIsUsing(player), value.Marker.Destination.x, value.Marker.Destination.y, value.Marker.Destination.z)
                            SetEntityHeading(GetVehiclePedIsUsing(player), value.Marker.Destination.heading)
                        else
                            TriggerEvent('esx:showNotification', _U('InVehicleError'))
                        end
                    else
                        SetEntityCoords(player, value.Marker.Destination.x, value.Marker.Destination.y, value.Marker.Destination.z)
                        SetEntityHeading(player, value.Marker.Destination.heading)
                    end
                end
            end
        end

    end
end

function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

function showPerssKeyAlert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end