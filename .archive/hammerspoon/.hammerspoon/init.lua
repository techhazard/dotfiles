hs.alert.show("### BEGIN ANEW ###");
hs.hotkey.bind({"alt"}, "R", function() 
  hs.reload()
end)
require "settings" -- supplies border ratios and list of apps
resizeWindowInScreen = require("resizeWindowInScreen")
var_dump = require("var_dump")
var_dump(hs.keycodes.map)
require "modes"
hs.alert.show("Config loaded")
return 0


---- module for the undocumented SPACES (AKA desktops) API
---- https://github.com/asmagill/hs._asm.undocumented.spaces
--SPACES = require("hs._asm.undocumented.spaces")
---- similar to php's var dump
--var_dump = require("var_dump")
--setSpacesForScreen = require("setSpacesForScreens")
--require "sleep"
--
--
--require "keybinds"
--
--require "layouts"
--
--
--function a(x) print(x) end
--
--allScreens = {}
----unique identifiers for monitors
--allScreens.laptopScreen = hs.screen.find(69732992)
--status, allScreens.dell1Screen, err  = xpcall(hs.screen.find, a, 724061837)  -- left display
--status, allScreens.dell2Screen, err  = xpcall(hs.screen.find, a, 724060302)  -- right display
----hs.showError(dell1Screen)
----hs.showError(dell2Screen)
----
----asd = hs.screen.allScreens()
--
--local function OpenApps(apps)
--  local openAppsList = {}
--  for app, name in pairs(apps) do
--    openAppsList[app] = hs.application.open(name)
--  end
--  for name, app in pairs(openAppsList) do
--    if app == nil then
--      sleep(2)
--      return OpenApps(apps)
--    end
--  end
--  return openAppsList
--end
--local function OpenApp(app)
--    openApp = hs.application.open(name)
--    if openApp == nil then
--      sleep(2)
--      return OpenApp(app)
--    end
--  return openApp
--end
--
---- move windows to SPACES
---- expecting
---- {app = space, app = space}
--local function MoveApplicationsToSpaces(appSpaces)
--
--  for app, space in pairs(appSpaces) do
--    windows = app:allWindows()
--    for i, w in ipairs(windows) do
--      w:spacesMoveTo(space)
--    end
--  end
--
--  newAppSpaces = {}
--  for app, space in pairs(appSpaces) do
--    mainWindow = app:mainWindow()
--    table.insert(newAppSpaces, {app, mainWindow:spaces()})
--  end
--
--  return newAppSpaces
--end
--
--local function MoveApplicationToSpace(app, space)
--  windows = app:allWindows()
--  for i, w in ipairs(windows) do
--    w:spacesMoveTo(space)
--  end
--end
--
---- expecting
---- {{app, position, borders}, {app, position, borders}}
--local function ResizeApplications(appPositions)
--  for app, position, borders in appPositions do
--    resizeWindowInScreen(app:mainWindow(), app:mainWindow():screen(), position, border)
--  end
--end
--
--
--local function placeAppsInSpaces(layout)
--
--  wanted_apps = {}
--  screenSpaces = {}
--  for screen, spaces in pairs(layout) do
--    hs.showError('screen: '..screen)
--    spaceCount = 0
--    for space, apps in pairs( spaces ) do
--      spaceCount = spaceCount + 1
--      for name, display in pairs(apps) do
--        wanted_apps[name] = name
--      end
--    end
--    var_dump(allScreens[screen])
--    allScreenSpaces[screen] = setSpacesForScreen(allScreens[screen], spaceCount);
--  end
--
--  open_apps = OpenApps(wanted_apps)
--
--  for screen, spaces in pairs(layout) do
--    screenSpaces = allScreenSpaces[screen]
--    spaceIndex = 1
--    for space, apps in pairs(spaces) do
--      for name, display in pairs(apps) do
--        my_app = open_apps[name]
--        position = display.position
--        border = display.borders
--        MoveApplicationToSpace(my_app, screenSpaces[spaceIndex])
--        resizeWindowInScreen(my_app:mainWindow(), my_app:mainWindow():screen(), position, border)
--      end
--      spaceIndex = spaceIndex + 1
--    end
--  end
--  local activeSpace = SPACES.activeSpace()
--  SPACES.changeToSpace(activeSpace, true)
--end
--
--
----apps = OpenApps(apps_list)
----MoveApplicationsToSpaces(apps)
----ResizeApplications(apps)
--
--screenCount = 0
--for Index, Value in pairs( allScreens ) do
--  screenCount = screenCount + 1
--end
--
--layout = singlemonitorLayout
--if screenCount == 1 then
--  layout = singlemonitorLayout
--elseif screenCount == 2 then
--  layout = dualMonitorLayout
--  layout = singlemonitorLayout --testing
--elseif screenCount == 3 then
--  layout = tripleMonitorLayout
--end
--
----placeAppsInSpaces(layout)
--
--
--
----
----setSpacesForScreens(laptopScreen, dell1Screen, dell2Screen)
----apps = OpenApps(apps_list)
----MoveApplicationsToSpaces(apps)
----ResizeApplications(apps)
--
--
--hs.dockicon.hide()
