//
//  ViewController.swift
//  video player
//
//  Created by camilo andres ibarra yepes on 1/9/19.
//  Copyright © 2019 camilo andres ibarra yepes. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBAction func buttonAction(_ sender: Any)
    {
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion:
            {
                video.play()
            })
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

