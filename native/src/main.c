#include <pspuser.h>
#include <pspdebug.h>
#include <pspdisplay.h>
#include <malloc.h>
#include <stdio.h>

// PSP_MODULE_INFO is required
PSP_MODULE_INFO("Hello World", 0, 1, 0);
PSP_MAIN_THREAD_ATTR(PSP_THREAD_ATTR_USER);

int exit_callback(int arg1, int arg2, void *common) {
    sceKernelExitGame();
    return 0;
}

int callback_thread(SceSize args, void *argp) {
    int cbid = sceKernelCreateCallback("Exit Callback", exit_callback, NULL);
    sceKernelRegisterExitCallback(cbid);
    sceKernelSleepThreadCB();
    return 0;
}

int setup_callbacks(void) {
    int thid = sceKernelCreateThread("update_thread", callback_thread, 0x11, 0xFA0, 0, 0);
    if(thid >= 0)
        sceKernelStartThread(thid, 0, 0);
    return thid;
}

void sys_global_init()  {
    // Use above functions to make exiting possible
    setup_callbacks();
}

void sys_global_exit()  {
     // Print Hello World! on a debug screen on a loop
    // pspDebugScreenInit();
    // while(1) {
    //     pspDebugScreenSetXY(0, 0);
    //     pspDebugScreenPrintf("Hello World!");
    //     sceDisplayWaitVblankStart();
    // }
}

void *sys_alloc_align(int size, int align) {
    return memalign(align, size);
}

void sys_free_align(void *ptr) {
    free(ptr);
}

void psp_debugScreenInit(){
    pspDebugScreenInit();
}

void psp_debugScreenSetXY(int x, int y)
{
    pspDebugScreenSetXY(x, y);
}

void psp_debugScreenPrintf(char* str){
    pspDebugScreenPrintf(str);
}

void psp_sceDisplayWaitVblankStart(){
    sceDisplayWaitVblankStart();
}