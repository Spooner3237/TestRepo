public class Grammer {
    public List<Integer> checkGrammer(String fullname){
        //String firstExceptInitial = fullName.split(' ')[0].substring(1);
       // String secondExceptInitial = fullName.split(' ')[1].substring(1);
        String initialOfFirstName = fullName.substring(0,1);
        Integer indexOfSpace = fullName.trim().indexOf(' ');
        String initialOfLastName = fullName.substring(indexOfSpace+1,indexOfSpace+2);
        Boolean isFirstNameInitialUpperCase = (initialOfFirstName.charAt(0)>=65 && initialOfFirstName.charAt(0)<=90);
        Boolean isLastNameInitialUpperCase = (initialOfLastName.charAt(0)>=65 && initialOfLastName.charAt(0)<=90);
		List<Integer> result = new List<Integer>() ;
        if(indexOfSpace==-1){
    result.add(1); }
if(!isFirstNameInitialUpperCase || !isLastNameInitialUpperCase){
    result.add(2); }
if(fullName.equals(fullName.toUpperCase())){
    result.add(3); }
if(fullName.deleteWhiteSpace().length()==0){
    result.add(4); }
if(fullName.deleteWhiteSpace().replaceAll('[A-Za-z]','').length()>0){
    result.add(5); }
/*if(firstExceptInıtial.replaceAll('[^A-Z]','').length()>0 || secondExceptInıtial.replaceAll('[^A-Z]','').length()>0 ){
    result= 6;
        }*/
    return result;
    } }
        /*
String fullName = 'Ali Can';
String firstExceptInitial = fullName.split(' ')[0].substring(1);
String secondExceptInitial = fullName.split(' ')[1].substring(1);
String initialOfFirstName = fullName.substring(0,1);
Integer indexOfSpace = fullName.trim().indexOf(' ');
String initialOfLastName = fullName.substring(indexOfSpace+1,indexOfSpace+2);
Boolean isFirstNameInitialUpperCase = (initialOfFirstName.charAt(0)>=65 && initialOfFirstName.charAt(0)<=90);
Boolean isLastNameInitialUpperCase = (initialOfLastName.charAt(0)>=65 && initialOfLastName.charAt(0)<=90);
if(indexOfSpace==-1){
    System.debug('First name or last name missed'); }
if(!isFirstNameInitialUpperCase || !isLastNameInitialUpperCase){
    System.debug('Error in initials'); }
if(fullName.equals(fullName.toUpperCase())){
    System.debug('Format error'); }
if(fullName.deleteWhiteSpace().length()==0){
    System.debug('Name was not entered'); }
if(fullName.deleteWhiteSpace().replaceAll('[A-Za-z]','').length()>0){
    System.debug('Invalid Name'); }
if(firstExceptInıtial.replaceAll('[^A-Z]','').length()>0 || secondExceptInıtial.replaceAll('[^A-Z]','').length()>0 ){
    System.debug('Case error');
}*/