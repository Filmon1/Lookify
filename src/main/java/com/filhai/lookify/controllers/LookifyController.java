package com.filhai.lookify.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.filhai.lookify.models.Song;
import com.filhai.lookify.services.SongService;

@Controller
public class LookifyController {
	private final SongService songService;
	
	public LookifyController(SongService songService) {
		this.songService = songService;
	}
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("songs", songService.allSongs());
		return "/dashboard.jsp";
		
	}
	@GetMapping("/search")
	
//	@GetMapping("/search/{artist}") 
	public String searchSong(@RequestParam(value="search", required=false) String search, Model model) {
		if(search == null) {
			return"redirect:/dashboard";
		}else {
			model.addAttribute("songs", songService.search(search));
			return "dashboard.jsp";
		}
	}
	
    @RequestMapping("/songs/new")
    public String newSong(Model model) {
    	model.addAttribute("newSongs", new Song());
        return "/addsong.jsp";
    }
    
    
    
    @GetMapping("/songs/{id}")
    public String details(@PathVariable("id") Long id, Model model) {
    	model.addAttribute("song", songService.findSong(id));
    	return "Details.jsp";
    }
    @GetMapping(value="/song/{id}")
    public String destory(@PathVariable("id") Long id) {
    	songService.deleteSong(id);
    	return "redirect:/dashboard";
    }
    
    @GetMapping("/search/topTen") 
    	public String top10(Model model) {
    		model.addAttribute("songs", songService.top10Songs());
    		return "/topsongs.jsp";
    	}
    
    
    @RequestMapping(value="/dashboard", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("newSongs") Song song, BindingResult result) {
        if (result.hasErrors()) {
            return "/addsong.jsp";
        } else {
            songService.createSong(song);
            return "redirect:/dashboard";
        }
    }
	}

