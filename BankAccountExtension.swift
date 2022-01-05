//
//  BankAccountExtension.swift
//  Lab02
//
//  Created by user202443 on 10/3/21.
//  Student: Isadora Santos
//  Student number: 200449748

import Foundation

public class BankAccountExtension{
    
    struct interestRate{
        var accountBalance:Double
        var interestRate:Double
        var yearlyIR:Double{
          accountBalance*interestRate/100
        }
    }
    
    public convenience init(interestRate:Double){
        self.init(interestRate:1.0)
    }
    
    
    
    
}
