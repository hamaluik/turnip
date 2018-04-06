import bpy
from bpy.types import Panel

class TurnipSettingsPanel(Panel):
    bl_label = 'Turnip'
    bl_space_type = 'PROPERTIES'
    bl_region_type= 'WINDOW'
    bl_context = 'scene'

    def draw(self, context):
        row = self.layout.row()
        row.prop(context.scene, 'definitions_path', text='Definitions File')

def register():
    bpy.utils.register_class(TurnipSettingsPanel)

def unregister():
    bpy.utils.unregister_class(TurnipSettingsPanel)
