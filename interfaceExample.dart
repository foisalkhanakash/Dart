void main()
{

consolePrinter cp = new consolePrinter();
cp.print_data();

}

class Printer {
  void print_data() {
    print("__________Printing Data_______");
  }
}

class consolePrinter implements Printer {
  
  void print_data() {
    print("Printing from console");
  }

}

