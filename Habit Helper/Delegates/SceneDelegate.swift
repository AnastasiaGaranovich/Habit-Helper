import UIKit
import LocalAuthentication
import iOSTools

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func sceneWillEnterForeground(_ scene: UIScene) {
        if AppData.isLogined {
            jumpTo(R.storyboard.faceIDLocked.instantiateInitialViewController()!)
        }
    }
    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }
}
