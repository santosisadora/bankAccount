//
//  BankAccount.swift
//  Lab02
//
//  Created by user202443 on 10/3/21.
//  Student: Isadora Santos
//  Student number: 200449748

import Foundation

public class BankAccount {
    
/*Stored properties and respectives Property observers*/
    
    //Account number.
    //I am using data type String here because we will not make any math operations with this number
    public var accountNumber: String = ""{
        willSet {
           print("The account number \(accountNumber) is set to \(newValue)")
       }
        didSet {
            if accountNumber.count < 0 || accountNumber.count > 8 {
                print("The account number is invalid. Setting it back to \(oldValue)")
                accountNumber = oldValue
            }
        }
    } // end property
    
    //Customer name
    public var customerName: String = " "{
        willSet {
           print("The customer name \(customerName) is set to \(newValue)")
       }
        didSet {
            if customerName.isEmpty {
                print("The customer name has to be given. Setting it back to \(oldValue)")
                customerName = oldValue
            }
        }
    } // end property
    
    //Yearly interest rate
    public var interestRate: Double = 2.0{
        willSet {
           print("Interest rate is \(newValue)")
       }
        didSet {
            if interestRate < 0.1 || interestRate > 2.0 {
                print("This interest rate is out of the legal range. Setting it back to \(oldValue)")
                interestRate = oldValue
            }
        }
    } // end property
    
    //account balance
    public var accountBalance: Double = 10.0{
        willSet {
           print("The account balance is now \(newValue)")
       }
        didSet {
            if accountBalance < 10.0 {
                print("The account needs to have at least $10. Setting it back to \(oldValue)")
                accountBalance = oldValue
            }
        }
    } // end property
    
    
/*Designated initializers*/
//Initializes all the properties to their default values
    public init(){

    }
//Initializes to appropriate values
    public init(accountNumber:String, customerName:String, interestRate:Double, accountBalance:Double){
        self.accountNumber = accountNumber
        self.customerName = customerName
        self.interestRate = interestRate
        
        if accountBalance > 0.0 {
            self.accountBalance = accountBalance
        }
    } //end init
    
    
/*Functions*/
//Function credit, used for depositing money
    public func deposit(amount: Double) {
        //if amount is positive, add it to the account balance
        if amount > 0.0 {
            accountBalance = accountBalance + amount
        }
        
    } //Function debit, used for withdrawing money. $1 is charged for every withdrawal
    public func withdrawal(amount: Double) {
         let withdrawalFee: Double = 1.0
        
        // if amount is valid AND there are sufficient funds in accountBalance, subtract it from the accountBalance
        if amount > 0.0 {
            if  accountBalance - amount >= 0.0 {
                accountBalance = accountBalance - amount - withdrawalFee
            }
        }
    }
    
} //end class
