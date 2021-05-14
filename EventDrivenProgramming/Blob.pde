public class Blob extends Sprite 
{
  public Event onClick;
  protected float radius;
  protected color myColor;
  protected String bText;
  protected color backgroundColor;
  protected color foregroundColor;
  protected float textSize;
  protected float wid;
  protected float ht;
  
  Blob(float x, float y, float r, color c)
  {
    super(x,y);
    onClick = new Event(Blob.class);
    myColor = c;
    radius = r;
    //this.setVelocity(new Vector2(random(-2,6), random(4,5)));
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
  public void click()
  {
    if(mouseX >= position.x - radius && mouseX <= position.x + radius && mouseY >= position.y - radius && mouseY <= position.y + radius)
    {
      println("***Blob Clicked!***");
      onClick.trigger(this);
    }
  }
}
