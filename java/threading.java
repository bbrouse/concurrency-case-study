class thread_test {
    public static void main(String[] args) {

        long startTime = System.currentTimeMillis();
        for(int i=0; i < 10000; i++){
            Thread thread = new Thread();
            thread.start();
        }
        long endTime = System.currentTimeMillis();

        long duration = endTime - startTime;
        System.out.println(duration);
    }
}