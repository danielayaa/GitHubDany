//
//  ViewController.swift
//  MusicPlayerLibraryPlaylist
//
//  Created by AMStudent on 10/8/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var songs = [Song]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSongs()
        table.delegate = self
        table.dataSource = self
    }
    
    func configureSongs() {
        songs.append (Song(name: "Dreams",
                           albumName: "Rumours",
                           artistName: "Fleetwood Mac",
                           imageName: "Cover1",
                           trackName: "song1"))
    
        songs.append (Song(name: "West Coast Love",
                           albumName: "The Juice, Vol. II",
                           artistName: "Emotional Oranges",
                           imageName: "Cover2",
                           trackName: "song2"))
        
        songs.append (Song(name: "Dreams",
                           albumName: "Rumours",
                           artistName: "Fleetwood Mac",
                           imageName: "Cover3",
                           trackName: "song3"))
        
        songs.append (Song(name: "Just a Waste",
                           albumName: "Just a Waste - Single",
                           artistName: "Pinkpantheress",
                           imageName: "Cover4",
                           trackName: "song4"))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let song = songs[indexPath.row]
        
        cell.textLabel?.text = song.name
        cell.detailTextLabel?.text = song.albumName
        cell.accessoryType = .disclosureIndicator
        
        cell.textLabel?.font = UIFont(name: "Helvetcia-Bold", size: 18)
        cell.detailTextLabel?.font = UIFont(name: "Helvetcia", size: 17)

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let position = indexPath.row
        
        guard let vc = storyboard?.instantiateViewController(identifier: "player") else {
            return
        }
        present(vc, animated: true)
    }
    
}

struct Song {
    let name: String
    let albumName: String
    let artistName: String
    let imageName: String
    let trackName: String
}
