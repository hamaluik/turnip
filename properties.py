import bpy
from bpy.types import Scene
from bpy.props import StringProperty

def register():
    Scene.definitions_path = StringProperty(
		name="definitions_path",
		description="Path to the component descriptions file",
		default="*.json",
		options={'HIDDEN'},
		maxlen=1024,
		subtype='FILE_PATH',
    )

def unregister():
    del Scene.definitions_path
