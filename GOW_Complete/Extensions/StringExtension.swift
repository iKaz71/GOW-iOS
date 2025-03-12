//
//  StringExtension.swift
//  GOW_Complete
//
//  Created by Lex Santos on 08/03/25.
//

import Foundation

extension String {
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }

    func localized(withComment comment : String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
