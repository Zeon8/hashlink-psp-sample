import Raylib;
import Raylib.*;

class Game {
    private static var screenWidth:Int = 480;
    private static var screenHeight:Int = 272;
    private var player = new Player();

    public function new() {}

    public function run() {
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        SetTargetFPS(60);
        
        player.init();
        while (!WindowShouldClose()) {
            player.update();

            BeginDrawing();
            ClearBackground(Color.White);
            DrawText("Hello World", 20, 20, 20, Color.Gray);
            player.draw();
            EndDrawing();
        }
        
        CloseWindow();
    }
}