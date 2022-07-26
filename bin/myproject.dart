import 'package:myproject/myproject.dart' as myproject;

void main(List<String> arguments) {

    //-------------Data Type-------------//
    // String
    String string = 'Besquare2022';

    // Numbers
    int integer = 20;
    double decimal = 177.0;

    // Dynamic does not need to have a specific type
    dynamic x = 22;
    dynamic y = 'test';

    // "const" must assign value immediately (on compiled time)
    const int constant = 1;
    // "final" same as "const" but can be assign later (on run time)
    final int constantFinal;
    constantFinal = 2;

    // Print out example
    print("=============Data Type=============");
    print('Hello $string: ${myproject.calculate()}!');
    print('age: $integer, Height: $decimal');
    print("dynamic: $x, $y");
    print("Constant: $constant \nFinal: $constantFinal");

    //-------------Functions-------------//
    print("\n=============Functions=============");

    // Normal Function
    print(func("John"));

    // Positional function
    // age is optional
    print("Positional and Optional Function: ${func2("John")}");
    // age and hobby is positional and optional
    print("Positional and Optional Function: ${func8("John", 12, "fishing")}");

    // Named parameter and optional parameter (age is optional)
    print(func3("Jane"));
    // Named parameter and optional parameter and nullable
    print(func4(height: 177));
    print(func4());

    // Named parameter and required parameter
    print(func5(height: 177));

    // Integer Data Type Function
    print("Integer data type function: ${func6(15)}, ${func6(15).runtimeType}");

    // Void function
    func7();

    //-------------Advance Data Type-------------//
    print("\n=============Advance Data Type=============");
    // List/Array
    List<int> arr = [1, 2, 3];
    print("List/Array: $arr");

    // Map
    // Syntax: Map<Key datatype, actual datatype >
    Map<String, int> map = {'age': 20, 'height': 177};
    print("Map: $map");
    Map<int, String> map2 = {1: "John", 2: "test" };
    print("Map: $map2");

    //-------------If/Else Statement-------------//
    print("\n=============If/Else Statement=============");

    int num = 10;

    print("Normal If/Else: ");
    if (num % 2 == 0){
        print("$num is an even number\n");
    }else {
        print("$num is an odd number\n");
    }

    int num2 = 1;
    print("Else If: ");
    if (num2 == 0){
        print("you selected $num2\n");
    } else if (num2 == 1) {
        print("you selected $num2\n");
    }
    else {
        print("selected number $num2 is not in the list\n");
    }

    print("If/Else Example: ");
    int? age;
    if (age == null){
        print("age is not provided");
    }else{
        print("your age is $age");
    }

    //-------------Switch/Case Statement-------------//
    print("\n=============Switch/Case Statement=============");

    int num3 = 3;
    print("Switch (integer):");
    switch(num3){
        case 1:
            print("You have selected the number $num3\n");
            break;
        case 2:
            print("You have selected the number $num3\n");
            break;
        case 3:
            print("You have selected the number $num3\n");
            break;
        default:
            print("selected number $num3 is not in the list\n");
            break;
    }

    print("Switch (string):");
    String numStr = "one";
    switch(numStr){
        case "one":
            print("You have selected the number 1\n");
            break;
        case "two":
            print("You have selected the number 2\n");
            break;
        case "three":
            print("You have selected the number 3\n");
            break;
        default:
            print("selected number $numStr is not in the list\n");
            break;
    }

    //-------------For Loop-------------//
    print("\n=============For Loop=============");
    var names = ["John", "Jane", "Anne", "Rick", "Morty"];

    print("Normal For Loop: ");
    for (var i = 0; i < 5; i++){
        print("${names[i]}, Index: $i");
    }

    print("\nFor-In Loop: ");
    for (var name in names ){
        print(name);
    }

    print("\nForEach Loop (arrow function): ");
    names.forEach((name) => print(name));

    print("\nForEach Loop (normal function): ");
    names.forEach((name) {
        print(name);
    });

    //-------------While Loop-------------//
    print("\n=============While Loop=============");

    bool boolean = true;
    int whileNum = 0;

    print("Normal while loop: ");
    while(boolean){
        print("This is loop number $whileNum");
        if (whileNum == 3){
            break;
        }
        whileNum++;
    }

    print("\nDo-while loop: ");
    do{
        print("This loop would run once no matter what!");
    }while(false);

}

//-------------Functions-------------//
// Reference: https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart
// Type casting is optional
String func(String name) {
    return "Normal: ${name.runtimeType}";
}

// Positional parameter and optional parameter
// "age" and optional
String func2(String name, [int age = 19]) {
    return "Positional and Optional Parameter: my name is $name and my age is $age!";
}

// Positional function (age and hobby is positional)
// age and hobby is nullable
String func8(String name, [int? age, String? hobby]){
    return "my name is $name, my age is $age, my hobby is $hobby!";
}

// Named parameter and optional parameter
// "age" and optional
String func3(String name, {int age = 19}) {
    return "Named and Optional Parameter: my name is $name and my age is $age!";
}

// Named parameter and optional parameter and nullable
// "?" makes it nullable
String func4({int? height}) {
    return "Named, Optional and Nullable parameter: $height";
}

// Named parameter and required parameter
String func5({required int height}) {
    return "Named and Required parameter: $height";
}

// Integer Data Type Function
int func6(int integer) {
    return integer;
}

// "void" does not have any return value
// use case: showing a dialog box in the front end
void func7(){
    print("Void function");
    return;
}

