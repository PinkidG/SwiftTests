//
//  main.swift
//  SwiftTests
//
//  Created by Philipp Pinkernelle on 09.05.17.
//  Copyright © 2017 Philipp Pinkernelle. All rights reserved.
//

import Foundation

print("Hello, World!")

func test(){
    print("open f1")
    defer {
        print("close f1")
    }
    if arc4random_uniform(100) > 50 {
        return;
    }
    print("open f2");
    defer{
        print("close f2");
    }
    print("read from f1");
    if arc4random_uniform(100) > 50 {
        return;
    }
    print("write from f2");
}

//test();


func buildArray(n: Int,
                start: Double,
                end: Double,
                fn: (Double) -> Double) -> [Double]{
    var result = [Double]();
    let delta = (end-start) / Double(n-1);
    for i in 0..<n{
        let x = start + delta * Double(i);
        result += [fn(x)];
    }
    return result;
}
