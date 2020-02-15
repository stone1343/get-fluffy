@echo off

rem ToDo: Optimize, use flags -~SG
inform +include_path=./,inform6lib-6.12.3/ -SDG get-fluffy.inf
lua game2js.lua get-fluffy.ulx >public\get-fluffy.ulx.js
