package applet;

////name: Pingyi Chen / Andy Chen
////Done by Myself~

import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class ShowShapes extends Applet{
private String MSG ="";
private String Shape = "";
private	String BGColor = "";
private	String FGColor = "";
private int StartX;
private int StartY;
private int height;
private int width;
private String FStyle="";
private int Size = 10;
private Font f = new Font("Helvetica", Font.PLAIN, 20);;
private int status;

public void init(){
	//read the parameters in the html file
	this.MSG = this.getParameter("Message");
	this.Shape = this.getParameter("Shape");
	this.FGColor = this.getParameter("Color");
	this.BGColor = this.getParameter("BGColor");
	this.height = Integer.parseInt(getParameter("Y"));
	this.width = Integer.parseInt(getParameter("X"));
	this.FStyle = this.getParameter("FTStyle");
	this.Size = Integer.parseInt(getParameter("FTSize"));
}


public void paint(Graphics g) {
	
	Font defualtf = new Font("Helvetica", Font.PLAIN, 15);
	//set FGCOLOR
	if(this.FGColor.equals("gray")||this.FGColor.equals("blue")||this.FGColor.equals("black")||this.FGColor.equals("red")||this.FGColor.equals("yellow")||
			this.FGColor.equals("green")||this.FGColor.equals("white")||this.FGColor.equals("pink")||this.FGColor.equals("cyan")||
			this.FGColor.equals("orange")||this.FGColor.equals("darkGray")||this.FGColor.equals("lightGray")||this.FGColor.equals("magenta")) {
		switch(this.FGColor) {
		case "blue":
			g.setColor(Color.blue);
			break;
		case "red":
			g.setColor(Color.red);
			break;
		case "black":
			g.setColor(Color.black);
			break;
		case "white":
			g.setColor(Color.white);
			break;
		case "cyan":
			g.setColor(Color.cyan);
			break;
		case "darkGray":
			g.setColor(Color.darkGray);
			break;
		case "gray":
			g.setColor(Color.gray);
			break;
		case "lightGray":
			g.setColor(Color.lightGray);
			break;
		case "magenta":
			g.setColor(Color.magenta);
			break;
		case "orange":
			g.setColor(Color.orange);
			break;
		case "pink":
			g.setColor(Color.pink);
			break;
		case "yellow":
			g.setColor(Color.yellow);
			break;	
		case "green":
			g.setColor(Color.green);
			break;
		}
	}
	else {
		g.setColor(Color.green);
		g.drawString("Wrong input FrontgrondColor", 5, 5);	
	}
	//set BGCOLOR
	if(this.BGColor.equals("gray")||this.BGColor.equals("blue")||this.BGColor.equals("black")||this.BGColor.equals("red")||this.BGColor.equals("yellow")||
			this.BGColor.equals("green")||this.BGColor.equals("white")||this.BGColor.equals("pink")||this.BGColor.equals("cyan")||
			this.BGColor.equals("orange")||this.BGColor.equals("darkGray")||this.BGColor.equals("lightGray")||this.BGColor.equals("magenta")) {
		switch(this.BGColor) {
		case "red":
			setBackground(Color.red);
			break;
		case "blue":
			setBackground(Color.blue);
			break;
		case "black":
			setBackground(Color.black);
			break;
		case "white":
			setBackground(Color.white);
			break;
		case "cyan":
			setBackground(Color.cyan);
			break;
		case "darkGray":
			setBackground(Color.darkGray);
			break;
		case "gray":
			setBackground(Color.gray);
			break;
		case "lightGray":
			setBackground(Color.lightGray);
			break;
		case "magenta":
			setBackground(Color.magenta);
			break;
		case "orange":
			setBackground(Color.orange);
			break;
		case "pink":
			setBackground(Color.pink);
			break;
		case "yellow":
			setBackground(Color.yellow);
			break;
		case "green":
			setBackground(Color.green);
			break;
		
		}
	}
	else {
		g.setFont(defualtf);
		g.drawString("Wrong input BackgrondColor", 5, 25);
		setBackground(Color.BLACK);
	}
	
	//Font Size
	FontMetrics FM;
	FM = g.getFontMetrics(f);
	
	int MaxSize = this.width/13*10/this.MSG.length();
	if(this.Size>MaxSize) {
		g.setFont(defualtf);
		g.drawString("Font Size is wrong", 5, 85);
		this.Size = 25;
	}
	
	//FontStyle
	if(this.FStyle.equals("BOLD")){
		this.f = new Font("Helvetica", Font.BOLD,this.Size);
	}
	else {
		if(this.FStyle.equals("ITALIC")) {
			this.f = new Font("Helvetica", Font.ITALIC,this.Size);
		}else {
			if(this.FStyle.equals("BOLD ITALIC")) {
				this.f = new Font("Helvetica", Font.BOLD+Font.ITALIC,this.Size);
			}
			else {
				if(this.FStyle.equals("REGULAR")) {
					this.f = new Font("Helvetica", Font.PLAIN,this.Size);
				}
				else {
					this.f = new Font("Helvetica", Font.PLAIN,this.Size);
					g.drawString("Wrong input FontStyle", 5, 45);
				}
			}
		}
	}
	g.setFont(this.f);
	
	//MSG length and position
	
	int ascent = FM.getAscent();
	int descent = FM.getDescent();
	int Fwidth = FM.stringWidth(this.MSG);
	int Fheight = FM.getAscent()+FM.getDescent();
	if(Fwidth>this.width) {
		g.setFont(defualtf);
		g.drawString("Wrong input MSG Length", 5, 65);
		this.MSG="Wrong MSG";
		Fwidth = FM.stringWidth("Wrong MSG");
		g.drawString(this.MSG, getWidth()/2-Fwidth/4, this.getHeight()/2+Fheight/3);
		
	}
	else {
		g.setFont(this.f);
		g.drawString(this.MSG, getWidth()/2-Fwidth/2, this.getHeight()/2+Fheight/3);
	}
	
	//shape size
	if(this.width<getWidth()&&this.height<getHeight()) {
		this.StartX = getWidth()/2 - this.width/2;
		this.StartY = getHeight()/2 - this.height/2;
		
	}
	else {
		this.width = 200;
		this.height = 200;
		this.StartX = getWidth()/2 - this.width/2;
		this.StartY = getHeight()/2 - this.height/2;
		g.setFont(defualtf);
		g.drawString("Shape Size is Wrong", 5, 180);
		g.setFont(this.f);
	}
	
	
	
	// Shape style
	if(this.Shape.equals("Rectangle")||this.Shape.equals("RoundRectangle")||this.Shape.equals("Oval")) {
		switch(this.Shape) {
		case "Rectangle": //draw Rectangle
			g.drawRect(this.StartX, this.StartY,this.width,this.height);
			//g.fillRect(10, 20, this.StartX, this.StartY);
			//g.drawString("This is a Rectangle",60,30);
			break;
		case "Oval":
			//draw a oval
			g.drawOval(this.StartX, this.StartY,this.width,this.height);
			//g.fillOval(10, 160, this.StartX, this.StartY);	
			break;
		case "RoundRectangle": //draw a round Rectangle
			g.drawRoundRect(this.StartX, this.StartY,this.width,this.height, 15, 15);
			//g.fillRoundRect(100, 300, this.StartX, this.StartY, 3, 3);
			break;
		}
	}
	else {
		g.drawRect(this.StartX, this.StartY,this.width,this.height);
		g.setFont(defualtf);
		g.drawString("ILLIGLE Shape Style", 5, 160);
	}
	
		
}

}

