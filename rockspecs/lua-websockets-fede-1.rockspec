package = "lua-websockets"
version = "fede-1"

source = {
  url = "git://github.com/fedenunez/lua-websockets.git",
}

description = {
  summary = "Websockets for Lua",
  homepage = "http://github.com/fedenunez/lua-websockets",
  license = "MIT/X11",
  detailed = "Provides sync and async clients and servers for copas and lua-ev."
}

dependencies = {
  "lua >= 5.3",
  "luasocket",
 -- "luabitop",
  "lua-ev",
  "copas",
  "luasec"
}

build = {
  type = 'none',
  install = {
    lua = {
      ['websocket'] = 'src/websocket.lua',
      ['websocket.sync'] = 'src/websocket/sync.lua',
      ['websocket.client'] = 'src/websocket/client.lua',
      ['websocket.client_sync'] = 'src/websocket/client_sync.lua',
      ['websocket.client_ev'] = 'src/websocket/client_ev.lua',
      ['websocket.client_copas'] = 'src/websocket/client_copas.lua',
      ['websocket.ev_common'] = 'src/websocket/ev_common.lua',
      ['websocket.server'] = 'src/websocket/server.lua',
      ['websocket.server_ev'] = 'src/websocket/server_ev.lua',
      ['websocket.server_copas'] = 'src/websocket/server_copas.lua',
      ['websocket.handshake'] = 'src/websocket/handshake.lua',
      ['websocket.tools'] = 'src/websocket/tools.lua',
      ['websocket.frame'] = 'src/websocket/frame.lua',
      ['websocket.bit'] = 'src/websocket/bit.lua',
    }
  }
}

