void branch(float len,float theta) { 
  stroke(255);
   strokeWeight(1);
  line(0, 0, 0, -len);
  translate(0, -len);
  len *= 0.80;
  
  if (len > 9) {
    pushMatrix();
    rotate(theta);
    branch(len,theta);       // call myself to draw new branches!!
    popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state

    // Repeat the same thing, only branch off to the "left" this time!
    pushMatrix();
    rotate(-theta);
    branch(len,theta);
    popMatrix();
    
  }
}
