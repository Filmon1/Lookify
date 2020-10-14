package com.filhai.lookify.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.filhai.lookify.models.Song;

public interface SongRepository  extends CrudRepository<Song, Long>  {
	
		@Query(value="SELECT * FROM `lookify-schema`.lookify ORDER BY rating Desc LIMIT 10", nativeQuery=true)
		List<Song> top3Song();
		
		List<Song> findAll();
	   
	    Long countByTitleContaining(String search);
	  
	    Long deleteByTitleStartingWith(String search);

		List<Song> findByArtistContaining(String search);

	

		
	}

