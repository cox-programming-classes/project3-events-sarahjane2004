public class Blob extends Sprite 
{
  protected float radius;
  protected color myColor;
  
  Blob(float x, float y, float r, color c)
  {
    super(x,y);
    myColor = c;
    radius = r;
    this.setVelocity(new Vector2(random(-2,6), random(4,5)));
  }
  void drawSprite()
  {
    fill(myColor);
    ellipse(position.x, position.y, 2*radius, 2*radius);
    
    ellipse(position.x + width, position.y, 2*radius, 2*radius);
    ellipse(position.x - width, position.y, 2*radius, 2*radius);
    ellipse(position.x, position.y + height, 2*radius, 2*radius);
    ellipse(position.x, position.y - height, 2*radius, 2*radius);
    
    ellipse(position.x + width, position.y + height, 2*radius, 2*radius);
    ellipse(position.x + width, position.y - height, 2*radius, 2*radius);
    ellipse(position.x - width, position.y + height, 2*radius, 2*radius);
    ellipse(position.x - width, position.y - height , 2*radius, 2*radius);
  }
 
}
