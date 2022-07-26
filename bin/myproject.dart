import 'package:myproject/myproject.dart' as myproject;

void main(List<String> arguments) {
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

    print("\n=============Functions=============");

    // Normal Function
    print(func("John"));

    // Named parameter and optional parameter
    print(func2("Jane"));
    // Named parameter and optional parameter and nullable
    print(func3(height: 177));
    print(func3());

    // Named parameter and required parameter
    print(func4(height: 177));

    // Integer Data Type Function
    print("Integer data type function: ${func5(15)}, ${func5(15).runtimeType}");

    // Void function
    func6();

    // Positional function (age and hobby is positional)
    print("Positional Function: ${func7("John", 12, "fishing" )}");
}

// Reference: https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart
// Type casting is optional
String func(String name) {
    return "Normal: ${name.runtimeType}";
}

// Named parameter and optional parameter
// "age" and optional
String func2(String name, {int age = 19}) {
    return "Named and Optional Parameter (function): my name is $name and my age is $age!";
}

// Named parameter and optional parameter and nullable
// "?" makes it nullable
String func3({int? height}) {
    return "Named, Optional and Nullable parameter (function): $height";
}

// Named parameter and required parameter
String func4({required int height}) {
    return "Named and Required parameter (function): $height";
}

// Integer Data Type Function
int func5(int integer) {
    return integer;
}

// "void" does not have any return value
// use case: showing a dialog box in the front end
void func6(){
    print("Void function");
    return;
}

// Positional function (age and hobby is positional)
// age and hobby is nullable
String func7(String name, [int? age, String? hobby]){
    return "my name is $name, my age is $age, my hobby is $hobby!";
}