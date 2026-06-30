class Main {
    static public function main():Void {
        trace("Hello World");
        Psp.debugScreenInit();
        while(true)
        {
            Psp.debugScreenSetXY(0, 0);
            Psp.debugScreenPrintf("Hello");
            Psp.sceDisplayWaitVblankStart();
        }
    }
}