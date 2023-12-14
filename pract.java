import java.util.Arrays;
import java.util.Scanner;

public class pract {
    public static void duplication(String a){
        int[] unique = new int[a.length()];
        int[] counter = new int[a.length()];
        int times = 1;
        int countertime = 0;
        int count = 0;
        int temp = (char) (a.charAt(0)-'0');
        unique[count] = temp;

        for(int i=1;i<a.length();i++){
            int c= (char) (a.charAt(i)-'0');
            if (temp==c){
                times++;
            }else {
                unique[++count] += c;
                counter[countertime++]=times;
                times = 1;
                temp=c;

            }
            if (i==a.length()-1){
                counter[countertime++]=times;
            }

        }
        int[] a1 = nullspliter(unique);
        int[] b1 = nullspliter(counter);



        int[][] total = new int[a1.length][2];
        for(int i=0;i<a1.length;i++){
            for(int j =0; j<2;j++){
                if(j==0){
                    total[i][j] = a1[i];
                }else
                    total[i][j] = b1[i];
            }
        }
        System.out.println(Arrays.deepToString(total));

    }

    public static int[] nullspliter(int[] a){
        int targetIndex = 0;
        for( int sourceIndex = 0;  sourceIndex < a.length;  sourceIndex++ )
            if( a[sourceIndex] != 0 )
                a[targetIndex++] = a[sourceIndex];
        int[] newArray = new int[targetIndex];
        System.arraycopy( a, 0, newArray, 0, targetIndex );
        return newArray;
    }
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String file = sc.nextLine();
        duplication(file);
    }
}
