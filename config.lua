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

Config                    = {}
Config.Locale             = 'it'
Config.key_to_teleport    = 38
Config.text_to_teleport   = "Premi ~y~[E]~s~ per ~g~entrare/~r~uscire"
Config.text_vehicle_error = "~r~Non puoi entrare con un veicolo."

Config.Teleports = {
    ErbaIn = {
        Blip = {
            Display = 0, -- 0 = disabled, 4 = default
            Pos = { x = 2592.51, y = 4668.88, z = 34.08 },
            Scale = 0,
            Color = 0,
            Sprite = 0,
            AsShortRange = true
        },

        Marker = {
            Pos   = { x = 2592.51, y = 4668.88, z = 34.08 },
            Destination = { x = 1065.36, y = -3183.39, z = -39.16, heading = 0 },
            Size  = { x = 1.3, y = 1.3, z = 1.0 },
            VisibilityDistance = 0, -- 0 = disabled
            EnteringDistance = 2,
            Color = { r = 30, g = 144, b = 255, a = 200 },
            Type  = 25,
            CanEnterWithVehicle = false
        }
    },
    ErbaOut = {
        Blip = {
            Display = 0, -- 0 = disabled, 4 = default
            Pos = { x = 1066.2, y = -3183.39, z = -40.16 },
            Scale = 0,
            Color = 0,
            Sprite = 0,
            AsShortRange = true
        },
        Marker = {
            Pos   = { x = 1066.2, y = -3183.39, z = -40.16 },
            Destination = { x = 2592.51, y = 4668.88, z = 34.08 , heading = 0 },
            Size  = { x = 1.3, y = 1.3, z = 1.0 },
            VisibilityDistance = 2, -- 0 = disabled
            EnteringDistance = 2,
            Color = { r = 30, g = 144, b = 255, a = 200 },
            Type  = 25,
            CanEnterWithVehicle = false
        }
    },

    AvvocatoIn = {
        Blip = {
            Display = 4, -- 0 = disabled, 4 = default
            Pos = { x = 327.42, y = -603.2, z = 42.3 },
            Scale = 0,
            Color = 351,
            Sprite = 351,
            AsShortRange = true
        },
        Marker = {
            Pos   = { x = 327.42, y = -603.2, z = 42.3 },
            Destination = { x = 339.44, y = -584.07, z = 74.17, heading = 253.25 },
            Size  = { x = 1.5, y = 1.5, z = 1.0 },
            VisibilityDistance = 10, -- 0 = disabled
            EnteringDistance = 2,
            Color = { r = 30, g = 144, b = 255, a = 200 },
            Type  = 25,
            CanEnterWithVehicle = false
        }
    },
    AvvocatoOut = {
        Blip = {
            Display = 4, -- 0 = disabled, 4 = default
            Pos = { x = 327.42, y = -603.2, z = 42.3 },
            Scale = 0,
            Color = 0,
            Sprite = 0,
            AsShortRange = true
        },

        Marker = {
            Pos = { x = 339.44, y = -584.07, z = 73.2 },
            Destination   = { x = 327.42, y = -603.2, z = 42.3, heading = 253.25 },
            Size  = { x = 1.5, y = 1.5, z = 1.0 },
            VisibilityDistance = 10, -- 0 = disabled
            EnteringDistance = 2,
            Color = { r = 30, g = 144, b = 255, a = 200 },
            Type  = 25,
            CanEnterWithVehicle = false
        }
    },
}
