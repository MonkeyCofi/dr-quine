import java.io.PrintWriter;
import java.io.FileNotFoundException;

public class Grace {
    public final static String KID = "Grace_kid.java";
    public final static String SOURCE = "import java.io.PrintWriter;%2$cimport java.io.FileNotFoundException;%2$c%2$cpublic class Grace {%2$c%1$cpublic static void main(String args[]) {%2$c%1$c%1$cpublic final static String KID=%3$cGrace_kid.java%3$c;%2$c%1$c%1$cpublic final static String SOURCE = %3$c%4$s%3$c;%2$c}";
    public static void main(String args[]) {
        try (PrintWriter w = new PrintWriter(KID)) {
            w.printf(SOURCE, 9, 10, 34, SOURCE);
        } catch (FileNotFoundException e) {
            return ;
        }
    }
}