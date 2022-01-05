//
//  main.swift
//  Lab02
//
//  Created by user202443 on 10/3/21.
//

import Foundation


//creating objects
//1.Successful creation of account with values passing validations
let account1 = BankAccount()

print("\nCreating new account:")
account1.accountNumber = "12345678"
account1.customerName = "Isadora Santos"
account1.interestRate = 2.0
account1.accountBalance = 25.0

//2.Attempt to create account with invalid values
let account2 = BankAccount()

print("\nCreating new account:")
account1.accountNumber = "123"
account1.customerName = ""
account1.interestRate = 4.5
account1.accountBalance = 5.0

//Testing deposit function
var newDeposit = 50.25

print("\nAn amount of " + String(newDeposit) + " was just deposited in the account.")

account1.deposit(amount:newDeposit)

//Testing withdrawal function
var newWithdrawal = 64.25

print("\nAn amount of " + String(newWithdrawal) + " was withdrew from the account.")

account1.withdrawal(amount: newWithdrawal)
