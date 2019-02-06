int u = 0;
int p = 0;
private boolean keyW = false;
private boolean keyS = false;


public void setup()
{
	size(1000,1000);
	frameRate(200);

}
public void draw()
{	
	if(keyW == true){
		u = u + 20;
	}
	if(keyS == true){
		u = u - 20;
	}
	background(255);
	sierpinski(0+u,0,1000);
	sierpinski2(0-u,1000,1000);
	sierpinski3(0,0+u,1000);
	sierpinski4(1000,1000-u,1000);

}
public void keyPressed() {
	if(key == 'w'){
		keyW = true;
	}
	if(key == 's'){
		keyS = true;
	}
}


public void keyReleased() {
	if(key == 'w'){
		keyW = false;
	}
	if(key == 's'){
		keyS = false;
	}


}
public void sierpinski(int x, int y, int len) 
{
	if(len < 10){
		triangle(x, y, x + len/2, y-len, x + len, y);
	}else{
		
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski(x,y,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski(x+len/2,y,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski(x+len/4,y+len/2,len/2);
		
	}
}

public void sierpinski2(int x, int y, int len) 
{
	if(len < 10){
		triangle(x, y, x + len/2, y-len, x + len, y);
	}else{
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski2(x,y,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski2(x+len/2,y,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski2(x+len/4,y-len/2,len/2);
		
	}
}

public void sierpinski3(int x, int y, int len) 
{
	if(len < 10){
		triangle(x, y, x + len/2, y-len, x + len, y);
	}else{
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski3(x,y,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski3(x,y+len/2,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski3(x+len/2,y+len/4,len/2);
		
	}
}

public void sierpinski4(int x, int y, int len) 
{
	if(len < 10){
		triangle(x, y, x + len/2, y-len, x + len, y);
	}else{
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski4(x,y,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski4(x,y-len/2,len/2);
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		sierpinski4(x-len/2,y-len/4,len/2);
		
	}
}


