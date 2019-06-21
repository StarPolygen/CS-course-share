import java.lang.reflect.InvocationTargetException;

public class Client {

    public static void main(String[] args) {

        try {
            Class clz = Class.forName(args[0]);
            DataManipulation dm = (DataManipulation) clz.getDeclaredConstructor().newInstance();

            dm.openDataSource();
            // dm.addOneMovie("流浪地球;cn;2019;127");
            System.out.println(dm.allContinentNames());
            System.out.println(dm.continentsWithCountryCount());
            System.out.println(dm.FullInformationOfMoviesRuntime(65, 75));
            dm.closeDataSource();



        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

    }
}

