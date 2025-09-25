String[][] groups = {
  {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
  {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
  {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
  {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"}
};
String[] groupName = {"GROUP A", "GROUP C", "GROUP ", "GROUP D"};



void display() {
  background(19, 60, 95);
  
  int i = 0; // reset each frame
  for (String[] group : groups) {
    for (String countryName : group) {


      int groupIndex = i / 4;          // 0..3
      int teamIndex  = i % 4;          // 0..3

      int col = groupIndex % 2;        // left/right
      int row = groupIndex / 2;        // top/bottom

      float baseX = 20 + col * groupSpacingX;
      float baseY = 70 + row * groupSpacingY;

      float x = baseX;
      float y = baseY + teamIndex * (bHeight + teamSpacing);

      if (teamIndex == 0) {
        fill(240, 233, 29);
        text(groupName[groupIndex], baseX+130, baseY - 10);

      }

      // box
      fill(255);
      rect(x, y, bWidth, bHeight);

      // text
      fill(0);
      text(countryName, x + 90, y + bHeight/2);

      i++;
    }
  }
}
