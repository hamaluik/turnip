import blender.Blender;
import blender.bpy.Utils;
import blender.bpy.props.StringProperty;

@:blenderAddon({
    name: "turnip",
    description: "tools for baldrick ECS",
    author: "Kenton Hamaluik",
    version: [0, 0, 1],
    blender: [2, 78, 0],
    location: "Properties > Object",
    warning: "",
    wiki_url: "https://github.com/FuzzyWuzzie/turnip",
    tracker_url: "https://github.com/FuzzyWuzzie/turnip/issues",
    support: "COMMUNITY",
    category: "Game Engine"
})
class Turnip {
    public static function main() {
        register();
    }

    public static function register():Void {
        Blender.registerProperty(blender.bpy.types.Scene, "definitions_path", new StringProperty({
            name: "definitions_path",
            description: "Path to the component descriptions file",
            options: new python.Set([blender.bpy.types.typeargs.PropertyOptions.HIDDEN]),
            maxlen: 1024,
            subtype: blender.bpy.types.typeargs.StringPropertySubtype.FILE_PATH
        }));

        Utils.register_class(ui.SettingsPanel);
    }

    public static function unregister():Void {
        Blender.unregisterProperty(blender.bpy.types.Scene, "definitions_path");

        Utils.unregister_class(ui.SettingsPanel);
    }
}