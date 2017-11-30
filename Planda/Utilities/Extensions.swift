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
        format.dateFormat = "MMMM yy"
        format.timeZone = TimeZone(abbreviation: "UTC")
        return format.string(from: self)
    }
}
