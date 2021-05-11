/*******************************************
 *     Paste your Vector2 class here!      *
 *******************************************/
 
 public class Vector2
{
  //***************************
  // Properties
  //***************************
  float x;
  float y;
  
  //***************************
  // Constructor
  //***************************
  
  public Vector2(float x, float y)
  {
    this.x = x;
    this.y = y; 
  }
  
  //***************************
  // Arithmetic Operations
  //***************************
  
  // Compute the Vector Sum of this + other.
  public Vector2 add(Vector2 other)
  {
    return new Vector2(other.x+this.x, other.y+this.y);   
  }
  
  // Compute the Vector Difference this - other
  public Vector2 subtract(Vector2 other)
  {
    return new Vector2(this.x-other.x, this.y-other.y);
  }
  
  // Compute |this| the Magnitude (length) of this vector.
  public float mag()
  {
    return sqrt((x*x) + (y*y));
  }
  
  // Compute the Dot Product this*other
  public float dotProduct(Vector2 other)
  {
    return ((this.x*other.x) + (this.y*other.y));
  }
  
  //scale vector 
  public Vector2 scale(float c)
  {
    return new Vector2(c*this.x, c*this.y);
  }
  
  // Compute the additive inverse Vector -this.
  public Vector2 inverse()
  {
    return new Vector2(-1*this.x, -1*this.y);
    // add to the vector to get zero
    //additive inverse?
  }
  
  // Compute a Unit Vector in the same direction as this vector.
  public Vector2 unitVector()
  {
    return new Vector2((this.x/mag()),(this.y/mag())); 
    // vector/magnitude = unit vector 
  }
  
  public Vector2 perpendicular()
  {
    return new Vector2(-1*this.x, this.y);
  } 
  
  public Vector2 rotate(float rads)
  {
    float tx = x; // temporary x
    float ty = y; // temporary y
    float nx = cos(rads)*tx - sin(rads) * ty; // new x
    float ny = sin(rads)*tx + cos(rads) * ty; // new y
    return new Vector2(nx, ny);
  }
}
