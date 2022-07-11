//  iDoTask (iOS)
//  Created by ilia Kravets on 25.06.2022.

import AVKit
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    //от аудиоплеера
    var audioPlayer: AVAudioPlayer?
   
    //таймер отсчета времени 5...1 для перехода на следующий экран
    var timer = Timer()
    var time = 3
    let uservc = UserViewController()
    
    @objc func timerClass() {
        time -= 1
        if(time == 0) {
            timer.invalidate()
            self.performSegue(withIdentifier: "UserViewIdentifier", sender: self)
        }
    }
    //конец инструментов таймера
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        //таймер
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerClass), userInfo: nil, repeats: true)
        //конец таймера
        
        //видео для Launchscreen
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "LaunchClock", ofType: "mp4")!))

        //видеоплеер без перемотки
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.frame
        layer.videoGravity = .resizeAspect
        view.layer.addSublayer(layer)
        player.volume = 0
        player.play()
        
        //Аудиоплеер
        let pathToSound = Bundle.main.path(forResource: "LaunchTicTac", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
        catch
        {
            print(error)
        }
        //Аудиоплеер конец
        
        
        //introLabel - tagline - begin
        let introlabel = UILabel.init(frame: CGRect.init(x: 0, y: 30, width: 700, height: 300))
        introlabel.text = "Time is your only invicible enemy, everything else is a matter of time"
        introlabel.textColor = .brown
        introlabel.backgroundColor = .white
        view.addSubview(introlabel)
        //introLabel - tagline - end
    }

}

//        видеоплеер с возможностью перемотки
//        let vc = AVPlayerViewController()
//        vc.player = player
//        present(vc, animated: true)
