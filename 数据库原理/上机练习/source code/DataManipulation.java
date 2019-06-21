public interface DataManipulation {
    public void openDataSource();
    public void closeDataSource();
    public int addOneMovie(String str);
    public String allContinentNames();
    public String continentsWithCountryCount();
    public String FullInformationOfMoviesRuntime(int min, int max);
}
