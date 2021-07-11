let bottles: number = 99;

function random() {
  return Math.floor(Math.random() * (100 - 0 + 1) + 0);
}

function verse(bottles: number) {
  console.log(`${bottles} bottles of beer on the wall,`);
  console.log(`${bottles} bottles of beer.`);
  if (random() > 80) {
    console.log("If one of those bottles should happen to fall,");
    console.log(`${bottles - 1} bottles of beer on the wall.\n`);
  }
  else if (random() < 20) {
    console.log("If that one bottle should happens to fall,");
    console.log("what a waste of alcohol!\n");
  }
  else {
    console.log("Take one down and pass it around.");
    console.log(`${bottles - 1} bottles of beer on the wall.\n`);
  }
}

function infiniteBottles() {
  verse(0);
  return -1;
}

function ending(bottles: number, waste: boolean) {
  if (random() == 100 && bottles == 1) {
    if (waste) {
      console.log("what a waste of alcohol!\n");
    }
    else {
      console.log("0 bottles of beer on the wall.\n");
    }

    bottles = infiniteBottles();
  }
  else {
    if (waste) {
      console.log("what a waste of alcohol!\n");
    }
    else {
      console.log("No more bottles of beer on the wall.\n");
    }

    console.log("No more bottles of beer on the wall,");
    console.log("no more bottles of beer.");
    if (random() <= 60) {
      bottles = 0;
      if (random() <= 10) {
        console.log("There's nothing else to fall,");
        console.log("because there's no more bottles of beer on the wall.\n");
      }
      else {
        console.log("We've taken them down and passed them around;");
        console.log("now we're drunk and passed out!\n");
      }
    }
    else {
      bottles = 99;
      console.log("Go to the store and buy some more,");
      console.log(`${bottles} bottles of beer on the wall.\n`);
    }
  }

  return bottles;
}

while (bottles != 0) {
  let ifWaste: boolean = false;
  while (1 < bottles || bottles <= -1) {
    verse(bottles);
    bottles = bottles - 1;
  }

  console.log(`${bottles} bottle of beer on the wall,`);
  console.log(`${bottles} bottle of beer.`);
  if (random() > 80) {
    console.log("If that one bottle should happen to fall,")
    if (random() < 20) {
      ifWaste = true;
    }
  }
  else {
    console.log("Take one down and pass it around.");
  }

  bottles = ending(bottles, ifWaste);
}
