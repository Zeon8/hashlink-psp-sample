#include <raylib.h>

// --- Window ---
void raylib_InitWindow(int width, int height, const char *title){
    InitWindow(width, height, title);
}
void raylib_CloseWindow(void){
    CloseWindow();
}
bool raylib_WindowShouldClose(void){
    return WindowShouldClose();
}
bool raylib_IsWindowReady(void){
    return IsWindowReady();
}
void raylib_SetTargetFPS(int fps){
    SetTargetFPS(fps);
}
int raylib_GetScreenWidth(void){
    return GetScreenWidth();
}
int raylib_GetScreenHeight(void){
    return GetScreenHeight();
}
int raylib_GetFPS(void){
    return GetFPS();
}
float raylib_GetFrameTime(void){
    return GetFrameTime();
}
double raylib_GetTime(void){
    return GetTime();
}

// --- Drawing ---
void raylib_BeginDrawing(void){
    BeginDrawing();
}
void raylib_EndDrawing(void){
    EndDrawing();
}
void raylib_ClearBackground(Color* color){
    ClearBackground(*color);
}
void raylib_DrawText(const char* text, int x, int y, int fontSize, Color* color){
    DrawText(text, x, y, fontSize, *color);
}
int raylib_MeasureText(const char* text, int fontSize){
    return MeasureText(text, fontSize);
}
void raylib_DrawPixel(int x, int y, Color* color){
    DrawPixel(x, y, *color);
}
void raylib_DrawLine(int startX, int startY, int endX, int endY, Color* color){
    DrawLine(startX, startY, endX, endY, *color);
}
void raylib_DrawLineV(Vector2* start, Vector2* end, Color* color){
    DrawLineV(*start, *end, *color);
}
void raylib_DrawCircle(int centerX, int centerY, float radius, Color* color){
    DrawCircle(centerX, centerY, radius, *color);
}
void raylib_DrawCircleV(Vector2* center, float radius, Color* color){
    DrawCircleV(*center, radius, *color);
}
void raylib_DrawRectangle(int x, int y, int width, int height, Color* color){
    DrawRectangle(x, y, width, height, *color);
}
void raylib_DrawRectangleV(Vector2* position, Vector2* size, Color* color){
    DrawRectangleV(*position, *size, *color);
}
void raylib_DrawRectangleRec(Rectangle* rec, Color* color){
    DrawRectangleRec(*rec, *color);
}
void raylib_DrawTriangle(Vector2* v1, Vector2* v2, Vector2* v3, Color* color){
    DrawTriangle(*v1, *v2, *v3, *color);
}

// --- Input: Keyboard ---
bool raylib_IsKeyPressed(int key){
    return IsKeyPressed(key);
}
bool raylib_IsKeyDown(int key){
    return IsKeyDown(key);
}
bool raylib_IsKeyReleased(int key){
    return IsKeyReleased(key);
}
bool raylib_IsKeyUp(int key){
    return IsKeyUp(key);
}
int raylib_GetKeyPressed(void){
    return GetKeyPressed();
}

// --- Input: Mouse ---
int raylib_GetMouseX(void){
    return GetMouseX();
}
int raylib_GetMouseY(void){
    return GetMouseY();
}
void raylib_GetMousePosition(Vector2* result){
    *result = GetMousePosition();
}
bool raylib_IsMouseButtonPressed(int button){
    return IsMouseButtonPressed(button);
}
bool raylib_IsMouseButtonDown(int button){
    return IsMouseButtonDown(button);
}
bool raylib_IsMouseButtonReleased(int button){
    return IsMouseButtonReleased(button);
}
bool raylib_IsMouseButtonUp(int button){
    return IsMouseButtonUp(button);
}

// --- Input: Gamepad ---
bool raylib_IsGamepadAvailable(int gamepad){
    return IsGamepadAvailable(gamepad);
}
const char* raylib_GetGamepadName(int gamepad){
    return GetGamepadName(gamepad);
}
bool raylib_IsGamepadButtonPressed(int gamepad, int button){
    return IsGamepadButtonPressed(gamepad, button);
}
bool raylib_IsGamepadButtonDown(int gamepad, int button){
    return IsGamepadButtonDown(gamepad, button);
}
bool raylib_IsGamepadButtonReleased(int gamepad, int button){
    return IsGamepadButtonReleased(gamepad, button);
}
bool raylib_IsGamepadButtonUp(int gamepad, int button){
    return IsGamepadButtonUp(gamepad, button);
}
int raylib_GetGamepadButtonPressed(void){
    return GetGamepadButtonPressed();
}
int raylib_GetGamepadAxisCount(int gamepad){
    return GetGamepadAxisCount(gamepad);
}
float raylib_GetGamepadAxisMovement(int gamepad, int axis){
    return GetGamepadAxisMovement(gamepad, axis);
}

// --- Textures ---
void raylib_LoadTexture(const char* fileName, Texture2D* result){
    *result = LoadTexture(fileName);
}
void raylib_UnloadTexture(Texture2D* texture){
    UnloadTexture(*texture);
}
void raylib_DrawTexture(Texture2D* texture, int posX, int posY, Color* tint){
    DrawTexture(*texture, posX, posY, *tint);
}
void raylib_DrawTextureV(Texture2D* texture, Vector2* position, Color* tint){
    DrawTextureV(*texture, *position, *tint);
}
void raylib_DrawTextureEx(Texture2D* texture, Vector2* position, float rotation, float scale, Color* tint){
    DrawTextureEx(*texture, *position, rotation, scale, *tint);
}