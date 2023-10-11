int HEIGHT = 480;
int WIDTH = 640;

void settings() {
    size(WIDTH, HEIGHT);
}

void setup() {
    background(255);
}

int x = 0;
void draw() {
    ellipse(x / 2, HEIGHT / 5, 10, 10);
    ellipse(x, 2 * HEIGHT / 5, 10, 10);
    ellipse(2 * x, 3 * HEIGHT / 5, 10, 10);
    ellipse(4 * x, 4 * HEIGHT / 5, 10, 10);
    x++;
}
