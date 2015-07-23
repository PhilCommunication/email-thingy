public class StringArrayTest {

    public static List<String> generateStringArray(Integer n){
        List<String> retorno = new List<String>();
        for(Integer i = 0; i < n; i++){
            String myString = 'Test ' + String.valueOf(i);
            retorno.add(myString);
        }
        return retorno;
    }
    
}