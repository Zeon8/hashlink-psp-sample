#include <pspuser.h>
#include <pspdebug.h>
#include <pspdisplay.h>
#include <malloc.h>
#include <stdio.h>
#include <raylib.h>

PSP_MODULE_INFO("Haxe Demo", 0, 1, 0);
PSP_MAIN_THREAD_ATTR(PSP_THREAD_ATTR_USER);

void sys_global_init() {}
void sys_global_exit() {}