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
}

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

