Button button;
ArrayList <Blob> theblobs;

void setup()
{
  size(800,600);
  button = new Button(100, 200, "BUTTON!");
  button.onClick.bind(this,"button_clicked");
  theblobs = new ArrayList<Blob>();
 // theblobs.add(blob);
}

void draw()
{
  background(150, 150, 255);
  button.drawSprite();
  button.move();
  for(Blob b: theblobs)
  {
    b.move();
    b.drawSprite();
  }
}

void mouseClicked()
{
  button.click();
}

void button_clicked(Button sender)
{
  Blob blob = new Blob(random(width), random(height), 20, color(200, 10, 140));
  theblobs.add(blob);
  blob.move();
}
