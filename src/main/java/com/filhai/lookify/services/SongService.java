package com.filhai.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.filhai.lookify.models.Song;
import com.filhai.lookify.repositories.SongRepository;

@Service
public class SongService {
	
	private final SongRepository songRepository;
	
	public SongService(SongRepository songRepository) {
		this.songRepository = songRepository;
		
	}
	 // returns all the books
    public List<Song> allSongs() {
        return songRepository.findAll();
    }
    // creates a song
    public Song createSong(Song newSong) {
        return songRepository.save(newSong);
    }
    // delete a song
    public void deleteSong(Long id) {
    	songRepository.deleteById(id);
    }
    
    //retrieve top 10 songs
    public List<Song> top10Songs(){
    	return songRepository.top3Song();
    }
    
    //search songs 
    
    public List<Song> search(String search) {
    	return songRepository.findByArtistContaining(search);
    }
    
    // retrieves a song
    public Song findSong(Long id) {
     Optional<Song> optionalBook = songRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }

    
    
}
