//
//  ZodiacSign.swift
//  ZodiacScope
//
//  Created by Álvaro Perera on 12/12/24.
//

import Foundation

struct ZodiacSign {
    let id: String
    let name: String
    let iconImage: String
    let dates: String
    
    static func getAllZodiacSigns() -> [ZodiacSign] {
        let zodiacSignsList: [ZodiacSign] =
        [
            ZodiacSign(id: "aries", name: "Aries", iconImage: "aries", dates: "January 20 - February 19"),
            ZodiacSign(id: "taurus", name: "Taurus", iconImage: "taurus", dates: "February 20 - March 20"),
            ZodiacSign(id: "gemini", name: "Gemini", iconImage: "gemini", dates: "March 21 - April 20"),
            ZodiacSign(id: "cancer", name: "Cancer", iconImage: "cancer", dates: "April 21 - May 20"),
            ZodiacSign(id: "leo", name: "Leo", iconImage: "leo", dates: "May 21 - June 20"),
            ZodiacSign(id: "virgo", name: "Virgo", iconImage: "virgo", dates: "June 21 - July 22"),
            ZodiacSign(id: "libra", name: "Libra", iconImage: "libra", dates: "July 23 - August 22"),
            ZodiacSign(id: "scorpio", name: "Scorpio", iconImage: "scorpio", dates: "August 23 - September 22"),
            ZodiacSign(id: "sagittarius", name: "Sagittarius", iconImage: "sagittarius", dates: "September 23 - October 22"),
            ZodiacSign(id: "capricorn", name: "Capricorn", iconImage: "capricorn", dates: "October 23 - November 22"),
            ZodiacSign(id: "aquarius", name: "Aquarius", iconImage: "aquarius", dates: "November 23 - December 21")
        ]
        return zodiacSignsList
    }
}
