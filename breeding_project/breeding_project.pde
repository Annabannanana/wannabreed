String itemsAll []   = {"kort", "kompas", "vand", "sandwich", "sukker", "dåsemad", "banan", "æble", "ost", "øl", "solcreme", "kamera", "t-shirt", "bukser", "paraply", "vandtætte bukser", "vandtæt overtøj", "pung", "solbriller", "håndklæde", "sokker", "bog", "notesbog", "telt"};
int weightOfItems [] = {150, 35, 200, 160, 60, 45, 60, 40, 30, 10, 70, 30, 15, 10, 40, 70, 75, 80, 20, 12, 50, 10, 1, 150};
int priceList []  = {90, 130, 1530, 500, 150, 680, 270, 390, 230, 520, 110, 320, 240, 480, 730, 420, 430, 220, 70, 180, 40, 300, 900, 2000};
int maxWeight     = 5000;
int totalFit = 0;
float generalFit     = 0;
float totalWeight      = 0;

int backpack []   = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int numBackpack = 0;
int population = 50;

PrintWriter output;

void setup() {
  size(100, 100);
  background(200);
  output = createWriter("data.txt");

  for (int i = 0; i < itemsAll.length; i++) {
    float pick = random(1);
    if (pick > 0.5) {
      backpack[i] = 1;
      totalWeight += weightOfItems[i];
      generalFit += priceList [i];
      backpack[24]=(int) generalFit; 
      backpack[25]=(int) totalWeight;
      print(itemsAll[i]);
    }
    println();
  }
  for (int i = 0; i < itemsAll.length + 2; i++) {
    print(backpack[i] + " ");
  }
  println();
  
  println(generalFit);
  println(totalWeight);
}
