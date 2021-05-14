Button button;
ArrayList <Blob> theblobs;
import processing.sound.*;
SoundFile file;

void setup()
{
  size(800,600);
  file = new SoundFile(this, "processing sound.wav");
  button = new Button(100, 200, "BUTTON!");
  button.onClick.bind(this,"button_clicked");
  theblobs = new ArrayList<Blob>();
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
  for(Blob b: theblobs)
  {
    b.click();
  }
}

void button_clicked(Button sender)
{
  Blob blob = new Blob(random(width), random(height), 20, color(200, 10, 140));
  blob.onClick.bind(this, "playSound");
  theblobs.add(blob);
  //blob.move();
}

void playSound(Blob sender)
{
  file.play();
}
