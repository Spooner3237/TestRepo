public class Calculation {
    public static void add(){
     Account a = [SELECT Name, BillingCity FROM Account LIMIT 1];
		a.Name = a.Name + ' test5';
        update a;
        
    }
}