package newex10;



/**
 *
 * @author bhalaji
 */
public class country {

    public String name;
    public String capital;
    public String currency;
    public int population;

    public country(String name,String capital,String currency,int population) {
        this.name = name;
        this.capital = capital;
        this.currency = currency;
        this.population = population;
    }

    public String getName() {
        return name;
    }

    public String getCapital() {
        return capital;
    }

    public String getCurrency() {
        return currency;
    }
    
    public int getPopulation() {
        return population;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCapital(String capital) {
        this.capital = capital;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }
    
    public void setPopulation(int population) {
        this.population = population;
    }
}