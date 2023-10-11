int WINDOW_HEIGHT = 680;
int WINDOW_WIDTH = 840;
int BALL_RADIUS = 10;
int WHITE_RGB = 255;

void settings() {
    size(WINDOW_WIDTH, WINDOW_HEIGHT);
}

class Ball{
    int radius, x, y, multiplier;
    Ball(int x, int y, int multiplier) {
        this.x = x;
        this.y = y;
        this.multiplier = multiplier;
        this.radius = BALL_RADIUS;
    }
    void show() {
        ellipse(this.x,this.y, this.radius, this.radius);
    }
    void update() {
        this.x += 1 * this.multiplier;
    }
}

Ball ball1 = new Ball(1, 1 * WINDOW_HEIGHT / 5, 1);
Ball ball2 = new Ball(1, 2 * WINDOW_HEIGHT / 5, 2);
Ball ball3 = new Ball(1, 3 * WINDOW_HEIGHT / 5, 3);
Ball ball4 = new Ball(1, 4 * WINDOW_HEIGHT / 5, 4);

void setup() {
    background(WHITE_RGB);
}

Ball[] balls = {ball1, ball2, ball3, ball4};


void draw() {
    // ellipse(x / 2, WINDOW_HEIGHT / 5, 10, 10);
    // ellipse(x, 2 * WINDOW_HEIGHT / 5, 10, 10);
    // ellipse(2 * x, 3 * WINDOW_HEIGHT / 5, 10, 10);
    // ellipse(4 * x, 4 * WINDOW_HEIGHT / 5, 10, 10);
    // x++;
    
    // ball1.show();
    // ball1.update();
    
    for (Ball ball : balls) {
        ball.show();
        ball.update();
    }
}
