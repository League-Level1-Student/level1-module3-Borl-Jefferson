package _01_static_smiley_blues;

import java.awt.Color;

import javax.swing.JFrame;
import javax.swing.JPanel;

public class SmileyBlues {
	void start() {
		// 1. Make a new JFrame and set it to be visible
JFrame jeff = new JFrame();
		// 2. Set your frame's default close operation to JFrame.EXIT_ON_CLOSE
jeff.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		// 3. Make a new JPanel
JPanel jepp = new JPanel();
		// 4. Add your panel to your frame
jeff.add(jepp);
jeff.setVisible(true);
		// 8. DO THIS LAST: 
Smiley.color = Smiley.GREEN;
		// Set the Smiley class's color variable to Smiley.YELLOW (NOT a specific smiley object's!)
		// Using a specific object for a static variable works, but is not usually recommended.
		// Run it again; are your Smileys all yellow now? Also try changing them to red or green!

		// 5. Make three Smiley objects and add them to your panel
Smiley a = new Smiley();
Smiley b = new Smiley();
Smiley c = new Smiley();
jepp.add(a);
jepp.add(b);
jepp.add(c);
// 6. Pack your frame
jeff.pack();
		// 7. RUN THE PROGRAM and make sure you see three blue Smileys!
	}
}
