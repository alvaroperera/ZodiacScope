//
//  ZodiacSignDetailViewController.swift
//  ZodiacScope
//
//  Created by Álvaro Perera on 13/12/24.
//

import UIKit

class ZodiacSignDetailViewController: UIViewController{
    
    @IBOutlet weak var zodiacSignIMG: UIImageView!
    @IBOutlet weak var zodiacSignNameLabel: UILabel!
    
    @IBOutlet weak var predictionLabel: UITextView!
    var zodiacSign: ZodiacSign?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewItems()
        
        func loadViewItems(){
            zodiacSignIMG.image = UIImage(named: zodiacSign!.iconImage)
            zodiacSignNameLabel.text = zodiacSign!.name
            self.fetchPrediction { result in
                if case .success(let horoscopeAPIResponse) = result {
                    DispatchQueue.main.async {
                        self.predictionLabel.text = horoscopeAPIResponse.data.horoscope_data
                    }
                }
            }
        }
    }
    
    func fetchPrediction(completion: @escaping (Result<HoroscopeAPIResponse, Error>) -> Void) {

        guard let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(self.zodiacSign!.id)&day=TODAY")
        else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return completion(.failure(error!))
            }
            let decoder = JSONDecoder()
            do {
                let horoscopeAPIResult = try decoder.decode(HoroscopeAPIResponse.self, from: data)
                completion(.success(horoscopeAPIResult))
            } catch {
                completion(.failure(error))
            }
        }
        .resume()

    }
}
