public abstract class Sprite
{
  Vector2 position;
  Vector2 velocity;
  float x; 
  float y;
  
  public Sprite(float x, float y)
  {
    position = new Vector2(x,y);
    velocity = new Vector2(0,0);
  }
  public Sprite(float x, float y, float dx, float dy)
  {
    position = new Vector2(x,y);
    velocity = new Vector2(dx,dy);
  }
  public Sprite(Vector2 s)
  {
    position = s;
    velocity = new Vector2(0,0);
  }
  public Sprite(Vector2 s, Vector2 v)
  {
    position = new Vector2(100,100);
    velocity = new Vector2(20,40);
  }
  public abstract void drawSprite(); {}
  
  public void move()
  {
    position = position.add(velocity);
  }
  public void moveTo(Vector2 newPosition)
  {
    position = newPosition;
  }
  public void setVelocity(Vector2 newVelocity)
  {
    velocity = newVelocity;
  }
  public Vector2 getPosition()
  {
    return position;
  }
  public Vector2 getVelocity()
  {
    return velocity;
  }
  void followMouse()
  {
    float speed = velocity.mag();//sqrt(dx*dx + dy*dy);
    Vector2 mLoc = new Vector2(mouseX, mouseY);
    Vector2 mDir = mLoc.subtract(position);
    //float delX = mouseX - this.x;
    //float delY = mouseY - this.y;
    //float mag = sqrt(delX*delX + delY*delY);
    position = position.add(mDir.unitVector().scale(speed));
    //if(delX != 0) x += (delX/mag) * speed;
    //if(delY != 0) y += (delY/mag) * speed;
  }
  public float distanceTo(Sprite other)
  {
    Vector2 diff = other.position.subtract(this.position);
    return diff.mag();
  }
  public void keyboardControl()
  {
    if(keyCode == UP)
    {
      velocity = new Vector2(0,-2);
    }
    if(keyCode == DOWN)
    {
      velocity = new Vector2(0,2);
    }
    if(keyCode == LEFT)
    {
      velocity = new Vector2(-2,0);
    }
    if(keyCode == RIGHT)
    {
      velocity = new Vector2(2,0);
    }
  }
}
