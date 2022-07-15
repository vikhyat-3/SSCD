import java.util.*;
public class round_robin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		int q,rp,n;
		System.out.println("Enter no. of processes");
		n=sc.nextInt();
		int bt[]=new int[n];
		int rt[]=new int[n];
		int wt[]=new int[n];
		System.out.println("Enter burst time for each process");
		for(int i=0;i<n;i++) {
			bt[i]=sc.nextInt();
			rt[i]=bt[i];
		}
		System.out.println("Enter quantum time");
		q=sc.nextInt();
		rp=n;
		int time=0,i=0;
		while(rp>0) {
			if(rt[i]>q) {
				rt[i]-=q;
				time+=q;
				System.out.println("Process["+i+"]");
				for(int k: rt)
					System.out.print(k);
			}
			else if(rt[i]<=q&&rt[i]>0) {
				time+=rt[i];
				rt[i]=0;
				System.out.println("Process["+i+"] terminated");
				rp--;
			}
			for(int p=0;p<n;p++) {
				if(rt[p]==0)
				{
					continue;
				}
				wt[p]+=q;
			}
			i=(i+1)%n;
		}
		/*int total=0;
		for(int p:wt)
			total+=p;
		float avg_wt=((float)total)/n;

		total=0;
		for(int p=0;i<n;i++) {
			tat[p]=wt[p]+bt[p];
		}
		float avg_wt=((float)total)/n;*/

		System.out.println("Total time: "+time);
	}

}
