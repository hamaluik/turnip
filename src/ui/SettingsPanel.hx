package ui;

import blender.bpy.Context;
import blender.bpy.types.Panel;
import blender.bpy.types.typeargs.*;

class SettingsPanel extends Panel {
    public static var bl_label = 'Turnip';
    public static var bl_space_type = SpaceType.PROPERTIES;
    public static var bl_region_type = RegionType.WINDOW;
    public static var bl_context = 'scene';

    override public function draw(context:Context):Void {
        var row = this.layout.row();
        row.prop(context.scene, "definitions_path", "Definitions File");
    }
}