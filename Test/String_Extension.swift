//
//  String_Extension.swift
//  Test
//
//  Created by Devabathini, Siva (Contractor) on 4/20/17.
//  Copyright © 2017 -. All rights reserved.
//

import Foundation
import SwiftRegexLite

extension String{
    
    func hasValidate(format: String) -> Bool {
        
        print("hasValidateCalled")
        
        let validate = "xxx-xxx-xxxx"
        
        let searchString:NSString = "$10.23, $1024.42, $3099 567"
        let regexString   = "\\$((\\d+)(?:\\.(\\d+)|\\.?))"
        let matchArray = searchString.componentsMatched(byRegex: regexString )
        
        if (matchArray?.count)! > 0 {
            return true
        }else {
            return false
        }
    }
    
    func test() {
        
        
        print("test Method Called")
        
        
        let textView: NSString = "Hola 123-234 Mundo"
        // finds phone number in format nnn-nnn-nnnn
        let regEx = "{3}-[0-9]{3}-[0-9]{4}";
        
        let match = textView.componentsMatched(byRegex: regEx)
        print(match)
        //        if ([match isEqual:@""] == NO) {
        //            NSLog(@"Phone number is %@", match);
        //        } else {
        //            NSLog(@"Not found.");
        //        }
    }
    
}
