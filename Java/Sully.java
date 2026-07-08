public class Sully {
    public static void main(String[] args) {
        int i = 5;
        if (i < 0) return;
        String code = "public class Sully {%n    public static void main(String[] args) {%n        int i = %1$d;%n        if (i < 0) return;%n        String code = %2$c%3$s%2$c;%n        String filename = String.format(%2$cSully_%%d.java%2$c, i--);%n        try (java.io.PrintWriter out = new java.io.PrintWriter(filename)) {%n            out.printf(code, i, 34, code);%n        } catch (java.io.IOException e) {%n            return;%n        }%n        String execFile = String.format(%2$cSully_%%d%2$c, i + 1);%n        String cmd1 = String.format(%2$cjavac %%s%2$c, filename);%n        String cmd2 = String.format(%2$cjava %%s%2$c, execFile);%n        try {%n            new ProcessBuilder(cmd1.split(%2$c %2$c)).start().waitFor();%n            new ProcessBuilder(cmd2.split(%2$c %2$c)).start();%n        } catch (Exception e) {%n            return;%n        }%n    }%n}";
        String filename = String.format("Sully_%d.java", i--);
        try (java.io.PrintWriter out = new java.io.PrintWriter(filename)) {
            out.printf(code, i, 34, code);
        } catch (java.io.IOException e) {
            return;
        }
        String execFile = String.format("Sully_%d", i + 1);
        String cmd1 = String.format("javac %s", filename);
        String cmd2 = String.format("java %s", execFile);
        System.out
        try {
            new ProcessBuilder(cmd1.split(" ")).start().waitFor();
            new ProcessBuilder(cmd2.split(" ")).start();
        } catch (Exception e) {
            return;
        }
    }
}