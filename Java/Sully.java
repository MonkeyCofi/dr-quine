public class Sully {
    public static void main(String[] args) {
        int i = 5;
        if (i < 0) return;
        int fileNum = i;
        String filename = String.format("Sully_%d.java", fileNum);
        i--;
        String code = "public class Sully_%1$d {%n    public static void main(String[] args) {%n        int i = %2$d;%n        if (i < 0) return;%n        int fileNum = i;%n        String filename = String.format(%3$cSully_%%d.java%3$c, fileNum);%n        i--;%n        String code = %3$c%4$s%3$c;%n        try (java.io.PrintWriter out = new java.io.PrintWriter(filename)) {%n            out.printf(code, fileNum, i, 34, code);%n        } catch (java.io.IOException e) {%n            return;%n        }%n        String execFile = String.format(%3$cSully_%%d%3$c, fileNum);%n        try {%n            new ProcessBuilder(%3$cjavac%3$c, filename).start().waitFor();%n            new ProcessBuilder(%3$cjava%3$c, execFile).start();%n        } catch (Exception e) {%n            return;%n        }%n    }%n}";
        try (java.io.PrintWriter out = new java.io.PrintWriter(filename)) {
            out.printf(code, fileNum, i, 34, code);
        } catch (java.io.IOException e) {
            return;
        }
        String execFile = String.format("Sully_%d", fileNum);
        try {
            new ProcessBuilder("javac", filename).start().waitFor();
            new ProcessBuilder("java", execFile).start();
        } catch (Exception e) {
            return;
        }
    }
}