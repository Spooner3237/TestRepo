public class SoqlRecap2 {
    // Database'den parametre ile Account lsitesi getirme
    public static List<Account> getAccount(String accName){
        List<Account> acc = [SELECT Name FROM Account WHERE Name LIKE  : '%' + accName + '%']; 
        return acc;
    }
    
    // Parametre ile belirtilen sayı kadar Test Account oluşturma
    public static void insertAccount (Integer num){
        List<Account> acc = new List<Account> ();
        
        for(Integer i=1; i<num+1; i++){
           acc.add(new Account(Name = 'Test Account ' + i));  
        }
        Database.insert (acc,false); //AllorNothing
    }
    
    // Adında Test kelimesi geçen Account'ları Database'den silme
        public static void daleteAccount (String accName){
            List<Account> acc = [SELECT Id FROM Account WHERE Name LIKE : '%' + accName + '%' ];

            Database.delete (acc,false); //AllorNothing
    }
}