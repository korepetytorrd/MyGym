//
//  ViewController.swift
//  MyGym
//
//  Created by Radoslaw on 01/04/2025.
//

import UIKit

class ViewController: UIViewController {
    var kolory: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dodajKolory()
        // Do any additional setup after loading the view.
    }
    
    
    func dodajKolory(){
        for _ in 0..<30{
            kolory.append(wygenerujKolor())
        }
    }
    
    func wygenerujKolor() -> UIColor {
        let randowmowyKolor = UIColor(red: CGFloat.random(in: 0...1),
                                      green: CGFloat.random(in: 0...1),
                                      blue: CGFloat.random(in: 0...1),
                                      alpha: 1)
        return randowmowyKolor
    }
    
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else { /*
                                                                                            guard wymusza ustawienie wartości zmiennej cell (w naszym przypadku jest to albo losowy kolor albo domyślna wartość gdy nie wykona się nasza funkcja do losowania koloru
                                                                                            dequeueReusableCell -> funkcja do optymalizacji wyswietlania tablicy na ekranie */
            return UITableViewCell()
        }
        let color = kolory[indexPath.row]
        
        cell.backgroundColor = color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "GymDeatails", sender: nil)
    }
}





