public class Colleen {
	private static void routine() {
		return ;
	}

	public static void main(String[] args) {
		String src = "public class Colleen {%2$c%1$cprivate static void routine() {%2$c%1$c%1$creturn ;%2$c%1$c}%2$c%2$c%1$cpublic static void main(String[] args) {%2$c%1$c%1$cString src = %3$c%4$s%3$c;%2$c%1$c%1$cSystem.out.printf(src, 9, 10, 34, src);%2$c%1$c%1$croutine();%2$c%1$c}%2$c}%2$c";
		System.out.printf(src, 9, 10, 34, src);
		routine();
	}
}
