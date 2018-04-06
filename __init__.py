bl_info = {
        "name": "turnip",
        "description": "tools for baldrick ECS",
        "author": "Kenton Hamaluik",
        "version": (0, 0, 1),
        "blender": (2, 78, 0),
        "location": "Properties > Object",
        "warning": "", # used for warning icon and text in add-ons panel
        "wiki_url": "https://github.com/BlazingMammothGames/turnip",
        "tracker_url": "https://github.com/BlazingMammothGames/turnip",
        "support": "COMMUNITY",
        "category": "Game Engine"
}

import bpy

def register():
    from . import properties
    from . import ui
    properties.register()
    ui.register()

def unregister():
    from . import properties
    from . import ui
    properties.unregister()
    ui.unregister()

if __name__ == '__main__':
    register()
