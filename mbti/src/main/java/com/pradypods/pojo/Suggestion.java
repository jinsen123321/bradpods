package com.pradypods.pojo;


public class Suggestion {
    private int id;
    private String type;
    private String profession;
    private String character;
    private String advantage;
    private String defect;

    public Suggestion(){

    }

    public Suggestion(int id, String type, String profession, String character, String advantage, String defect) {
        this.id = id;
        this.type = type;
        this.profession = profession;
        this.character = character;
        this.advantage = advantage;
        this.defect = defect;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getCharacter() {
        return character;
    }

    public void setCharacter(String character) {
        this.character = character;
    }

    public String getAdvantage() {
        return advantage;
    }

    public void setAdvantage(String advantage) {
        this.advantage = advantage;
    }

    public String getDefect() {
        return defect;
    }

    public void setDefect(String defect) {
        this.defect = defect;
    }
}
