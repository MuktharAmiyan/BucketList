//
//  ContentView.swift
//  BucketList
//
//  Created by Mukthar Amiyan on 06/01/24.
//

import LocalAuthentication
import SwiftUI

 
struct ContentView: View {
    @State private var isUnlocked = false
    var body: some View {
        VStack{
            if isUnlocked {
                Text("Unlocked")
            }else{
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
    }
    
    
    func authenticate() {
        let context = LAContext()
        var error : NSError?
       
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            let reason = "We need to unlock your data."
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    isUnlocked = true
                }else{
                    //There was a problem
                }
            }
        }else{
            //No biometric
        }
    }
}

#Preview {
    ContentView()
}
