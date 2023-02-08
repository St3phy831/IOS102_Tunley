//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {
    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "Todo De Ti",
              artistName: "Rauw Alejandro",
              artworkUrl100: URL(string:"https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/24/d6/4d/24d64d11-dcba-a475-7a0f-87fbef4c6ba6/886449222681.jpg/100x100bb.jpg")!),
        Track(trackName: "PUNTO 40",
              artistName: "Rauw Alejandro & Baby Rasta",
              artworkUrl100: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music122/v4/6e/e8/d8/6ee8d8ec-2cf2-5fbe-62d2-ce2bcc4b3171/196589475701.jpg/100x100bb.jpg")!),
        Track(trackName: "La Nota",
              artistName: "Manuel Turizo, Rauw Alejandro & Myke Towers",
              artworkUrl100: URL(string: "https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/86/31/12/86311201-a36c-136d-f6ac-fb7845c4d8d6/886448740506.jpg/100x100bb.jpg")!)
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
