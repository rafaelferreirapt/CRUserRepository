import java.util.*;   
import java.io.*;    

public class Random_to_file {
	 static Random rand = new Random();
	 static final int nBlocks = 8;  //número de palavras

public static void main (String args[])   throws IOException     {
    int a[] = new int[nBlocks];
	for(int i = 0; i < a.length;  i++)
        a[i] = rand.nextInt(0xF);
	File fout = new File("ex.coe");
	PrintWriter pw = new PrintWriter(fout);
	pw.println("memory_initialization_radix = 16;");
	pw.println("memory_initialization_vector = ");
    for(int k=0; k<nBlocks; k++) 
	   pw.printf("%1x, ",a[k]); // imprime palavras de %0X *4 bits
	pw.println(";");
	pw.close();
}
}
