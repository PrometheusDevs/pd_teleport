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

fx_version 'bodacious'
game 'gta5'

author 'Pietro di Caprio AKA PietroDC0 - Prometheus Devs'
description 'Easy teleports'
version '1.0.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
    'client.lua'
}

dependencies {
	'es_extended'
}
