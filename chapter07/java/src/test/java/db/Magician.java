package db;

public class Magician {
    private String name;
    private int birthyear;

    public Magician(String name, int birthyear) {
        this.name = name;
        this.birthyear = birthyear;
    }

    public String getName() {
        return name;
    }
    public int getBirthyear() {
        return birthyear;
    }
}