import Raylib;
import Raylib.*;

class Player {
    private var x: Int = 50;
    private var y: Int = 50;
    private var speed = 2;
    private var sprite: Texture2D;

    public function new() {}

    public function init() {
        sprite = LoadTexture("player.png");
    }

    public function update() {
        if(IsGamepadButtonDown(0, GamepadButton.LEFT_FACE_UP))
            y -= speed;
        if(IsGamepadButtonDown(0, GamepadButton.LEFT_FACE_DOWN))
            y += speed;
        if(IsGamepadButtonDown(0, GamepadButton.LEFT_FACE_LEFT))
            x -= speed;
        if(IsGamepadButtonDown(0, GamepadButton.LEFT_FACE_RIGHT))
            x += speed;
    }

    public function draw(){
        DrawTexture(sprite, x, y, Color.White);
    }
}