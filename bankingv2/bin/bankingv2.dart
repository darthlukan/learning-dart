class BankAccount {
    String owner, number;
    double balance;
    DateTime dateCreated, dateModified;

    // Constructor
    BankAccount(this.owner, this.number, this.balance) {
        dateCreated = new DateTime.now();
    }

    // Methods
    deposit(double amount) {
        balance += amount;
        dateModified = new DateTime.now();
    }
    withdraw(double amount) {
        balance -= amount;
        dateModified = new DateTime.now();
    }
}


void main() {
    var ba = new BankAccount("John Doe", "123-456789-00", 1000.0);

    print("Initial balance:\t\t \$${ba.balance}");
    print("Bank account created at: ${ba.dateCreated}");

    ba.deposit(250.0);
    print("Balance after deposit:\t\t \$${ba.balance}");
    print("Bank account modified at: ${ba.dateModified}");

    ba.withdraw(100.0);
    print("Balance after withdrawal:\t \$${ba.balance}");
    print("Bank account modified at: ${ba.dateModified}");
}
