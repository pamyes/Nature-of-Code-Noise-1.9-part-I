class Noisee {
  int step=2;
  //Constructor
  Noisee() {  
    loadPixels(); 
    float xoff = 0.0; 
    for (int x = 0; x < width; x++) {   // For every xoff, start yoff at 0.
      float yoff = 0.0; 
      for (int y = 0; y < height; y++) {   // Use xoff and yoff for noise().
        noiseDetail(1, .8);
        float bright = map(noise(xoff, yoff), 0.1, 2, 0, 255); 
        pixels[x+y*width] = color(bright);     // Use x and y for pixel location.
        // Increment yoff.
        yoff +=0.1;
      }
      // Increment xoff.
      xoff +=0.1;
    }
    updatePixels();
  }
  void updatePoints(float o){
    
    float xoff = 0.0; 
    for (int x = 0; x < width; x+=step) {   // For every xoff, start yoff at 0.
      float yoff = 0.0; 
      for (int y = 0; y < height; y+=step) {   // Use xoff and yoff for noise().
        float bright = map(noise(xoff, yoff,o), 0, 1, 0, 360); 
        fill(bright,90,90);
        noStroke();
        rect(x, y, step, step);
        //pixels[x+y*width] = color(bright);     // Use x and y for pixel location.
        // Increment yoff.
        yoff +=0.01;
      }
      // Increment xoff.
      xoff +=0.05;
    }
  }
}