//
//  Extensions
//  Planda
//
//  Created by Vik Denic on 11/30/17.
//  Copyright © 2017 nekturlabs. All rights reserved.
//

import Foundation

extension Date {
    func toMonthYearString() -> String {
        let format = DateFormatter()
        format.dateFormat = "MMMM yyyy"
        return format.string(from: self)
    }
}

import UIKit

extension UIViewController {
    class func storyboardInstance(storyboardId: String, restorationId: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardId, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: restorationId)
    }
    
    func showAlert(title: String!, message: String!) {
        let alert : UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style:.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func showAlert(fromError error: Error!) {
        let alert = UIAlertController(title: error.localizedDescription as String, message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    class func className() -> String {
        return String(describing: self.self)
    }
    
}
