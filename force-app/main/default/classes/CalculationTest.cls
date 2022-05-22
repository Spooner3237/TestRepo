@isTest
public class CalculationTest {
    @isTest
    public static void addTest(){
       	Calculation calc = new Calculation();
        Integer result = calc.add(4,5);
        //Integer result2 = calc.add(6,5);
        System.assertEquals(10, calc.add(6,5));
        System.debug(result); 
    }
}