function hey(n) {
  for (let i = 0; i < 10; i = i + 3) {
    console.log("hello", i + n);
  }
}

for (let j = 0; j < 3; j++) {
  console.log("hello #", j);
  hey(j);
}
