@:struct
class Vector2 {
    public var x: Single;
    public var y: Single;
    public function new(x: Single, y: Single) {
        this.x = x;
        this.y = y;
    }
    public static var Zero = new Vector2(0, 0);
}

@:struct
class Vector3 {
    public var x: Single;
    public var y: Single;
    public var z: Single;
    public function new(x: Single, y: Single, z: Single) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    public static var Zero = new Vector3(0, 0, 0);
}

@:struct
class Rectangle {
    public var x: Single;
    public var y: Single;
    public var width: Single;
    public var height: Single;
    public function new(x: Single, y: Single, width: Single, height: Single) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }
}

@:struct
class Texture2D {
    public var id: Int;
    public var width: Int;
    public var height: Int;
    public var mipmaps: Int;
    public var format: Int;
    public function new(id: Int, width: Int, height: Int, mipmaps: Int, format: Int) {
        this.id = id;
        this.width = width;
        this.height = height;
        this.mipmaps = mipmaps;
        this.format = format;
    }
}

@:struct
class Color {
    public var r: hl.UI8;
    public var g: hl.UI8;
    public var b: hl.UI8;
    public var a: hl.UI8;
    public function new(r: hl.UI8, g: hl.UI8, b: hl.UI8, a: hl.UI8) {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }
    public static var White = new Color(255, 255, 255, 255);
    public static var Gray  = new Color(130, 130, 130, 255);
    public static var Red   = new Color(230, 41, 55, 255);
    public static var Green = new Color(0, 228, 48, 255);
    public static var Blue  = new Color(0, 121, 241, 255);
    public static var Black = new Color(0, 0, 0, 255);
    public static var RayWhite = new Color(245, 245, 245, 255);
}

enum abstract GamepadButton(Int) {
    var UNKNOWN = 0;
    var LEFT_FACE_UP = 1;
    var LEFT_FACE_RIGHT = 2;
    var LEFT_FACE_DOWN = 3;
    var LEFT_FACE_LEFT = 4;
    var RIGHT_FACE_UP = 5;
    var RIGHT_FACE_RIGHT = 6;
    var RIGHT_FACE_DOWN = 7;
    var RIGHT_FACE_LEFT = 8;
    var LEFT_TRIGGER_1 = 9;
    var LEFT_TRIGGER_2 = 10;
    var RIGHT_TRIGGER_1 = 11;
    var RIGHT_TRIGGER_2 = 12;
    var MIDDLE_LEFT = 13;
    var MIDDLE = 14;
    var MIDDLE_RIGHT = 15;
    var LEFT_THUMB = 16;
    var RIGHT_THUMB = 17;
}

enum abstract GamepadAxis(Int) {
    var LEFT_X = 0;
    var LEFT_Y = 1;
    var RIGHT_X = 2;
    var RIGHT_Y = 3;
    var LEFT_TRIGGER = 4;
    var RIGHT_TRIGGER = 5;
}

class Raylib {
    // --- Window ---
    public static function InitWindow(width: Int, height: Int, title: String): Void {
        InitWindowInternal(width, height, @:privateAccess title.toUtf8());
    }
    
    @:hlNative("raylib", "InitWindow")
    private static function InitWindowInternal(width: Int, height: Int, title: hl.Bytes): Void {}

    @:hlNative("raylib", "CloseWindow")
    public static function CloseWindow(): Void {}

    @:hlNative("raylib", "WindowShouldClose")
    public static function WindowShouldClose(): Bool { return false; }

    @:hlNative("raylib", "IsWindowReady")
    public static function IsWindowReady(): Bool { return false; }

    @:hlNative("raylib", "SetTargetFPS")
    public static function SetTargetFPS(value: Int): Void {}

    @:hlNative("raylib", "GetScreenWidth")
    public static function GetScreenWidth(): Int { return 0; }

    @:hlNative("raylib", "GetScreenHeight")
    public static function GetScreenHeight(): Int { return 0; }

    @:hlNative("raylib", "GetFPS")
    public static function GetFPS(): Int { return 0; }

    @:hlNative("raylib", "GetFrameTime")
    public static function GetFrameTime(): Single { return 0; }

    @:hlNative("raylib", "GetTime")
    public static function GetTime(): Float { return 0; }

    // --- Drawing ---
    @:hlNative("raylib", "BeginDrawing")
    public static function BeginDrawing(): Void {}

    @:hlNative("raylib", "EndDrawing")
    public static function EndDrawing(): Void {}

    @:hlNative("raylib", "ClearBackground")
    public static function ClearBackground(color: Color): Void {}

    public static function DrawText(text: String, x: Int, y: Int, fontSize: Int, color: Color): Void {
        DrawTextInternal(@:privateAccess text.toUtf8(), x, y, fontSize, color);
    }

    @:hlNative("raylib", "DrawText")
    private static function DrawTextInternal(text: hl.Bytes, x: Int, y: Int, fontSize: Int, color: Color): Void {}

    public static function MeasureText(text: String, fontSize: Int): Int {
        return MeasureTextInternal(@:privateAccess text.toUtf8(), fontSize);
    }

    @:hlNative("raylib", "MeasureText")
    private static function MeasureTextInternal(text: hl.Bytes, fontSize: Int): Int { return 0; }

    @:hlNative("raylib", "DrawPixel")
    public static function DrawPixel(x: Int, y: Int, color: Color): Void {}

    @:hlNative("raylib", "DrawLine")
    public static function DrawLine(startX: Int, startY: Int, endX: Int, endY: Int, color: Color): Void {}

    @:hlNative("raylib", "DrawLineV")
    public static function DrawLineV(start: Vector2, end: Vector2, color: Color): Void {}

    @:hlNative("raylib", "DrawCircle")
    public static function DrawCircle(centerX: Int, centerY: Int, radius: Single, color: Color): Void {}

    @:hlNative("raylib", "DrawCircleV")
    public static function DrawCircleV(center: Vector2, radius: Single, color: Color): Void {}

    @:hlNative("raylib", "DrawRectangle")
    public static function DrawRectangle(x: Int, y: Int, width: Int, height: Int, color: Color): Void {}

    @:hlNative("raylib", "DrawRectangleV")
    public static function DrawRectangleV(position: Vector2, size: Vector2, color: Color): Void {}

    @:hlNative("raylib", "DrawRectangleRec")
    public static function DrawRectangleRec(rec: Rectangle, color: Color): Void {}

    @:hlNative("raylib", "DrawTriangle")
    public static function DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Void {}

    // --- Input: Keyboard ---
    @:hlNative("raylib", "IsKeyPressed")
    public static function IsKeyPressed(key: Int): Bool { return false; }

    @:hlNative("raylib", "IsKeyDown")
    public static function IsKeyDown(key: Int): Bool { return false; }

    @:hlNative("raylib", "IsKeyReleased")
    public static function IsKeyReleased(key: Int): Bool { return false; }

    @:hlNative("raylib", "IsKeyUp")
    public static function IsKeyUp(key: Int): Bool { return false; }

    @:hlNative("raylib", "GetKeyPressed")
    public static function GetKeyPressed(): Int { return 0; }

    // --- Input: Mouse ---
    @:hlNative("raylib", "GetMouseX")
    public static function GetMouseX(): Int { return 0; }

    @:hlNative("raylib", "GetMouseY")
    public static function GetMouseY(): Int { return 0; }

    public static function GetMousePosition(): Vector2 {
        var v = new Vector2(0, 0);
        GetMousePositionInternal(v);
        return v;
    }

    @:hlNative("raylib", "GetMousePosition")
    private static function GetMousePositionInternal(result: Vector2): Void {}

    @:hlNative("raylib", "IsMouseButtonPressed")
    public static function IsMouseButtonPressed(button: Int): Bool { return false; }

    @:hlNative("raylib", "IsMouseButtonDown")
    public static function IsMouseButtonDown(button: Int): Bool { return false; }

    @:hlNative("raylib", "IsMouseButtonReleased")
    public static function IsMouseButtonReleased(button: Int): Bool { return false; }

    @:hlNative("raylib", "IsMouseButtonUp")
    public static function IsMouseButtonUp(button: Int): Bool { return false; }

    @:hlNative("raylib", "IsGamepadAvailable")
    public static function IsGamepadAvailable(gamepad: Int): Bool { return false; }

    public static function GetGamepadName(gamepad: Int): String {
        var bytes = GetGamepadNameInternal(gamepad);
        if (bytes == null) return null;
        return @:privateAccess String.fromUTF8(bytes);
    }

    @:hlNative("raylib", "GetGamepadName")
    private static function GetGamepadNameInternal(gamepad: Int): hl.Bytes { return null; }

    @:hlNative("raylib", "IsGamepadButtonPressed")
    public static function IsGamepadButtonPressed(gamepad: Int, button: GamepadButton): Bool { return false; }

    @:hlNative("raylib", "IsGamepadButtonDown")
    public static function IsGamepadButtonDown(gamepad: Int, button: GamepadButton): Bool { return false; }

    @:hlNative("raylib", "IsGamepadButtonReleased")
    public static function IsGamepadButtonReleased(gamepad: Int, button: GamepadButton): Bool { return false; }

    @:hlNative("raylib", "IsGamepadButtonUp")
    public static function IsGamepadButtonUp(gamepad: Int, button: GamepadButton): Bool { return false; }

    @:hlNative("raylib", "GetGamepadButtonPressed")
    public static function GetGamepadButtonPressed(): Int { return 0; }

    @:hlNative("raylib", "GetGamepadAxisCount")
    public static function GetGamepadAxisCount(gamepad: Int): Int { return 0; }

    @:hlNative("raylib", "GetGamepadAxisMovement")
    public static function GetGamepadAxisMovement(gamepad: Int, axis: GamepadAxis): Single { return 0; }

    // --- Textures ---
    public static function LoadTexture(fileName: String): Texture2D {
        var tex = new Texture2D(0, 0, 0, 0, 0);
        LoadTextureInternal(@:privateAccess fileName.toUtf8(), tex);
        return tex;
    }

    @:hlNative("raylib", "LoadTexture")
    private static function LoadTextureInternal(fileName: hl.Bytes, result: Texture2D): Void {}

    @:hlNative("raylib", "UnloadTexture")
    public static function UnloadTexture(texture: Texture2D): Void {}

    @:hlNative("raylib", "DrawTexture")
    public static function DrawTexture(texture: Texture2D, posX: Int, posY: Int, tint: Color): Void {}

    @:hlNative("raylib", "DrawTextureV")
    public static function DrawTextureV(texture: Texture2D, position: Vector2, tint: Color): Void {}

    @:hlNative("raylib", "DrawTextureEx")
    public static function DrawTextureEx(texture: Texture2D, position: Vector2, rotation: Single, scale: Single, tint: Color): Void {}
}