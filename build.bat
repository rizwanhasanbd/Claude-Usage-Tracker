@echo off

REM Build dataclasses
echo Building dataclasses...
node scripts/build-dataclasses.js

REM Chrome build
echo Starting Chrome build...
if exist manifest_chrome.json (
    copy manifest_chrome.json manifest.json
    call web-ext build --filename "{name}-{version}-chrome.zip" -o
    del manifest.json
    echo Chrome build complete.
)

REM Clean up
echo All builds completed.