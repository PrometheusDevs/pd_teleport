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

Config.Teleports = {
    Example = {
        Blip = {
            Display = 0, -- 0 = disabled, 4 = default
            Pos = { x = 1066.2, y = -3183.39, z = -40.16 },
            Scale = 0,
            Color = 0,
            Sprite = 0,
            AsShortRange = true,
            Name = 'Blip'
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
}
