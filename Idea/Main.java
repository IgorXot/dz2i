package Idea;

import java.util.Scanner;

import Idea.Beasts.Camel;
import Idea.Beasts.Donkey;
import Idea.Pets.Cat;
import Idea.Pets.Dog;

public class Main {
    public static void main(String[] args) {

        Farm<Animal> animalFarm = new Farm<>();

        animalFarm.adopt(new Cat(101, "1", "2017-01-01", true));
        animalFarm.adopt(new Donkey(102, "2", "2018-02-02", 12));
        animalFarm.adopt(new Camel(103, "3", "2019-03-03", 15));
        animalFarm.adopt(new Dog(104, "4", "2020-04-04", false));

        try {
            while (true) {

                Menu.showMainMenu();
                try (
                        Scanner sc = new Scanner(System.in)) {
                    int i = sc.nextInt();
                    switch (i) {
                        case 1:
                            Farm.printAnimals();
                            break;
                        case 2:
                            Menu.printOnlyThisClass(animalFarm);
                            break;
                        case 3:
                            Menu.Comands();
                            break;
                        case 4:
                            Menu.newComand();
                            break;
                        case 5:
                            Menu.newAnimal();
                            break;
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Try one more time");
        }
    }

}