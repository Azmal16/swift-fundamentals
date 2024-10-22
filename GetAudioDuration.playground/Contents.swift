import SwiftUI
import AVFoundation



Task {
    let asset = AVURLAsset(url: NSURL(fileURLWithPath: "https://mmhva.s3.amazonaws.com/Audio%2femma%2femma_chinToChest_637745939495018791.wav") as URL, options: nil)
    let audioDuration = try await asset.load(.duration)
    let audioDurationSeconds = CMTimeGetSeconds(audioDuration)
    print(audioDurationSeconds)
}


