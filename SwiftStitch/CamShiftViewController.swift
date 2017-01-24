//
//  CamShiftViewController.swift
//  SwiftStitch
//
//  Created by Andrew Conti on 1/24/17.
//  Copyright © 2017 ellipsis.com. All rights reserved.
//
import UIKit
import AVKit
import AVFoundation

class CamShiftViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "video", ofType:"mp4") else {
            debugPrint("video.m4v not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}
