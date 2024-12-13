//
//  ZodiacSign.swift
//  ZodiacScope
//
//  Created by Álvaro Perera on 12/12/24.
//

import Foundation

struct ZodiacSign: Codable {
    let id: String
    let name: String
    let iconImage: String
    let dates: String
    let todayPrediction: String
    
    static func getAllZodiacSigns() -> [ZodiacSign] {
        let zodiacSignsList: [ZodiacSign] =
        [
            ZodiacSign(id: "aries", name: "Aries", iconImage: "aries", dates: "March 21 - April 19", todayPrediction: ""),
            ZodiacSign(id: "taurus", name: "Taurus", iconImage: "taurus", dates: "April 20 - May 20", todayPrediction: ""),
            ZodiacSign(id: "gemini", name: "Gemini", iconImage: "gemini", dates: "May 21 - June 20", todayPrediction: ""),
            ZodiacSign(id: "cancer", name: "Cancer", iconImage: "cancer", dates: "June 21 - July 22", todayPrediction: ""),
            ZodiacSign(id: "leo", name: "Leo", iconImage: "leo", dates: "July 23 - August 22", todayPrediction: ""),
            ZodiacSign(id: "virgo", name: "Virgo", iconImage: "virgo", dates: "August 23 - September 22", todayPrediction: ""),
            ZodiacSign(id: "libra", name: "Libra", iconImage: "libra", dates: "September 23 - October 22", todayPrediction: ""),
            ZodiacSign(id: "scorpio", name: "Scorpio", iconImage: "scorpio", dates: "October 23 - November 21", todayPrediction: ""),
            ZodiacSign(id: "sagittarius", name: "Sagittarius", iconImage: "sagittarius", dates: "November 22 - December 21", todayPrediction: ""),
            ZodiacSign(id: "capricorn", name: "Capricorn", iconImage: "capricorn", dates: "December 22 - January 21", todayPrediction: ""),
            ZodiacSign(id: "aquarius", name: "Aquarius", iconImage: "aquarius", dates: "January 22 - February 19", todayPrediction: ""),
            ZodiacSign(id: "pisces", name: "Pisces", iconImage: "pisces", dates: "February 20 - March 20", todayPrediction: "")
        ]
        return zodiacSignsList
    }
}

struct HoroscopeAPIResponse: Codable {
    let data: HoroscopeAPIResponseData
    let status: Int
    let success: Bool
}

struct HoroscopeAPIResponseData: Codable {
    let date: String
    let horoscope_data: String
}
