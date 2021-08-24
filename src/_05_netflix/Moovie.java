package _05_netflix;

public class Moovie {
public static void main(String[] args) {
	
	Movie a = new Movie("PAINT DRIES IN 4K IN 3D 🔥🔥🔥", 78/5);
	Movie b = new Movie("PAINT DRIES IN 4K IN 3D 🔥🔥🔥 THE SEQUAL", 65/5);
	Movie c = new Movie("PAINT DRIES IN 4K IN 3D 🔥🔥🔥 THE SEQUAL THE SEQUAL", 54/5);
	Movie d = new Movie("PAINT DRIES IN 4K IN 3D 🔥🔥🔥 THE SEQUAL THE SEQUAL THE SEQUAL", 31/5);
	Movie e = new Movie("PAINT DRIES IN 4K IN 3D 🔥🔥🔥 THE SEQUAL THE SEQUAL THE SEQUAL THE SEQUAL Twilight Edition", 12/5);
	NetflixQueue f = new NetflixQueue();
	f.addMovie(a);
	f.addMovie(b);
	f.addMovie(c);
	f.addMovie(d);
	f.addMovie(e);

	System.out.println(f.getMovie(0).getTicketPrice() + f.getMovie(0));
	System.out.println(f.getMovie(1).getTicketPrice() + f.getMovie(1));
	System.out.println(f.getMovie(2).getTicketPrice() + f.getMovie(2));
	System.out.println(f.getMovie(3).getTicketPrice() + f.getMovie(3));
	System.out.println(f.getMovie(4).getTicketPrice() + f.getMovie(4));
	
	System.out.println("the best movie is " + f.getBestMovie());
	System.out.println("the second best movie is " + f.getSecondBestMovie());
	
	
}
}
