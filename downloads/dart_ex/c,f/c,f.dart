/*cp2019ag3
int rabbitCount = 0;
const int NO_YEARS = 10;
const int GROWTH_FACTOR = 15;
int calculateRabbits(int years) {
  return ((9/5)*c+32)
      .round()
      .toInt();
}

*/

cimport "dart:html";
pconst int GROWTH_FACTOR = 15;
2
void main() {
  querySelector("#submit").onClick.listen((e) => calcRabbits());
}
0
calcRabbits() {
 1 // binding variables to html elements:
  9InputElement cInput = querySelector("#c");
 a LabelElement output = querySelector("#output");
  g// getting input
  3String cString = cInput.value;
  int c = int.parse(cString);
  // calculating and setting output:
  output.innerHtml = "${calculateRabbits(c)}";
}

int calculateRabbits(int c) {
   return ((9/5)*c+32)
      .round()
      .toInt();
}

/*html
After <input type="number" id="years" value="5" min="1" max="30"> Years
<input type="button" id="submit" value="Calculate"/>
<br/>Number of rabbits: <label id="output"></label>
css
body {
  color: white;
  font-size: 30px;
}
input, select, textarea {
font-size: 100%;
}
*/
/*40823125import 'dart:html';
InputElement task;
UListElement list;
main() {
  task = querySelector('#task');
  list = querySelector('#list');
  task.onChange.listen((e) => addItem());
}
void addItem() {
  var newTask = LIElement();
  newTask.text = task.value;
  task.value = '';
  list.children.add(newTask);
}
*/
/*html
  <input id="task" type="text" placeholder=
  "What do you want to do?"/>
  <ul id="list"/>
css
body {
  color: white;
  font-size: 30px;
}
input, select, textarea {
font-size: 100%;
}
*/