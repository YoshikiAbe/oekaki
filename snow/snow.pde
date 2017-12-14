PVector[] stars;
int c = 40;
void setup() {
    size(300,300);
    frameRate(12);
    stars = new PVector[c];
    for( int i=0; i height ) stars[i] = new PVector( random( width), 0);
    }
}
