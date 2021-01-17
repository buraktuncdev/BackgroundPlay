//
//  ViewController.swift
//  BackgroundPlay
//
//  Created by Burak Tunc on 17.01.21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func findPath(){
        do {
            let path = Bundle.main.path(forResource: "music", ofType: ".mp3")
            player = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: path!))
            player.prepareToPlay()
        } catch {
            print(error.localizedDescription)
        }
    }

    @IBAction func startButtonPressed(_ sender: Any) {
        player.play()
    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        player.stop()
    }
    
    
}

