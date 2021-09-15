//
//  FaceIDLockedViewController.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 15.09.2021.
//

import UIKit
import LocalAuthentication
import iOSTools

class FaceIDLockedViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkFaceID()
    }
    
    private func checkFaceID() {
        let context = LAContext()
        var error: NSError? = nil
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
                                     error: &error) {
            let reason = "Please authorize with touchID"
            context.evaluatePolicy(
                .deviceOwnerAuthenticationWithBiometrics,
                localizedReason: reason,
                reply:
                    { success, error in
                        DispatchQueue.main.async {
                            guard success, error == nil else {
                                //failed
                                return
                            }
                            jumpTo(R.storyboard.main.instantiateInitialViewController()!)
                        }
                    })
        }
        else {
            //cant use
            Alert.error("Unavailable")
        }
    }
}
