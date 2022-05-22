public class SoqlRecap {
      public List<Account> getAcc (String name){
        List<Account> acc = [SELECT Name FROM Account WHERE Name LIKE :name +'%'];
      //  for(Account a:acc){
           // System.debug(a);
        //}
        return acc;
    }
     public static void insertAcc (){
  // Liste oluşturma 1. Yöntem:     
         List<Account> acc = new List<Account>{
             new Account (Name='Test Account 1'),
             new Account (Name='Test Account 2')
         };
          
     List<Account> acc2 = new List<Account>();
         acc2.add(new Account (Name='Test Account 3'));
  	     insert acc2;

    }
     public static void updateAcc (){
        List<Account> acc = [SELECT Name FROM Account WHERE Name LIKE 'United%'];
        for(Account a:acc){
            System.debug(a);
        }
    }
    
}