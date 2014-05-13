class BankAccount {
    String owner, number;
    double balance;

    // Constructor
    BankAccount(this.owner, this.number, this.balance);

    // Methods
    deposit(double amount) => balance += amount;
    withdraw(double amount) => balance -= amount;
}


void main() {
    var ba = new BankAccount("John Doe", "123-456789-00", 1000.0);

    print("Initial balance:\t\t \$${ba.balance}");

    ba.deposit(250.0);
    print("Balance after deposit:\t\t \$${ba.balance}");

    ba.withdraw(100.0);
    print("Balance after withdrawal:\t \$${ba.balance}");
}
