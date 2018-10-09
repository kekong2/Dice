int sum = 0;
void setup()
{
	noLoop();
	size(600,600);
}
void draw()
{
	sum = 0;
	for(int a = 0; a < 800; a += 100){
		for(int b = 0; b < 800; b += 100){
			Die bob = new Die(a, b);
			bob.roll();
			bob.show();
		}
	}
	fill(0,0,0);
	text("Total is : "+ sum,260,500);
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	public Die (int x, int y){
		myX = x;
		myY = y;

	}
	int pit = 0;
	void roll()
	{
		pit = (int)(Math.random()*6)+1;
		sum = sum + pit;
	}
	void show()
	{
		fill(255);
		rect (myX,myY,100,100);
		if (pit == 1){
			ellipse(myX + 50,myY + 50,10,10);
		}else if (pit == 2){
			ellipse(myX + 20,myY + 20,10,10);
			ellipse(myX + 80,myY + 80,10,10);
		}else if (pit == 3){
			ellipse(myX + 20,myY + 20,10,10);
			ellipse(myX + 50,myY + 50,10,10);
			ellipse(myX + 80,myY + 80,10,10);
		}else if (pit == 4){
			ellipse(myX + 20,myY + 20,10,10);
			ellipse(myX + 80,myY + 20,10,10);
			ellipse(myX + 20,myY + 80,10,10);
			ellipse(myX + 80,myY + 80,10,10);
		}else if (pit == 5){
			ellipse(myX + 20,myY + 20,10,10);
			ellipse(myX + 80,myY + 20,10,10);
			ellipse(myX + 50,myY + 50,10,10);
			ellipse(myX + 20,myY + 80,10,10);
			ellipse(myX + 80,myY + 80,10,10);
		}else{
			ellipse(myX + 20,myY + 20,10,10);
			ellipse(myX + 20,myY + 50,10,10);
			ellipse(myX + 80,myY + 20,10,10);
			ellipse(myX + 20,myY + 80,10,10);
			ellipse(myX + 80,myY + 50,10,10);
			ellipse(myX + 80,myY + 80,10,10);
		}
	}
}
