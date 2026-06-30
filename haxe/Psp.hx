import hl.Bytes;

class Psp {
    @:hlNative("psp", "debugScreenInit")
    public static function debugScreenInit() {}

    @:hlNative("psp", "debugScreenSetXY")
    public static function debugScreenSetXY(x:Int, y:Int){}
    
    public static function debugScreenPrintf(string: String) {
        debugScreenPrintfInternal(@:privateAccess string.toUtf8());
    }

    @:hlNative("psp", "debugScreenPrintf")
    public static function debugScreenPrintfInternal(string:Bytes) {}
    
    @:hlNative("psp", "sceDisplayWaitVblankStart")
    public static function sceDisplayWaitVblankStart() {}
}
