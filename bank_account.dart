class BankAccount {
  String accountID;
  double balance;

  //(constructor)
  BankAccount(this.accountID, this.balance);

  //(named constructor)
  BankAccount.initialBalance(this.accountID, {this.balance = 0.0});

  //(withdraw)
  void withdraw(double withdrawalAmount) {
    if (withdrawalAmount <= 0) {
      print('Error: Withdrawal amount must be positive.');
    } else if (withdrawalAmount > balance) {
      print('Error: Insufficient balance.');
    } else {
      balance -= withdrawalAmount;
      print(
          'Withdrawal of \$${withdrawalAmount.toStringAsFixed(2)} successful.');
    }
  }

  // (deposit)
  void deposit(double depositAmount) {
    if (depositAmount <= 0) {
      print('Error: Deposit amount must be positive.');
    } else {
      balance += depositAmount;
      print('Deposit of \$${depositAmount.toStringAsFixed(2)} successful.');
    }
  }

//displayAccountInfo
  void displayAccountInfo() {
    print('Account ID: $accountID');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  // Create bank accounts
  BankAccount account1 = BankAccount('123456', 1000.0);
  BankAccount account2 = BankAccount.initialBalance('78910');

// Deposit and withdraw from account 1
  account1.deposit(500);
  account1.withdraw(200);
  account1.withdraw(1500); // Insufficient balance
  account1.displayAccountInfo();

  // Deposit and withdraw from account 2
  account2.deposit(100);
  account2.withdraw(50);
  account2.withdraw(-40); // Invalid input
  account2.displayAccountInfo();
}
