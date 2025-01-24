package com.example.demo;


import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AlienController {
	
	//FIELD NJECTION
	@Autowired
	private AlienRepo repo;
	
	
	//CONSTRUCTOR INJECTION
//	private final AlienRepo repo;
//	public AlienController(AlienRepo repo) {
//		super();
//		this.repo = repo;
//	}
	
	
	//SETTER INJECTION
//	private AlienRepo repo;
//	public AlienRepo getRepo() {
//		return repo;
//	}
//	@Autowired
//	public void setRepo(AlienRepo repo) {
//		this.repo = repo;
//	}

	@RequestMapping("/")
    public String display() {
    	return "index";
    }
    
    @RequestMapping("addAlien")
    public String addAlien(Alien a,Model m) {
    	Optional<Alien> a1=repo.findById(a.getAid());
    	if(a1.isPresent()) {
    		m.addAttribute("result","Record already present with id: " + a.getAid());
    	}
    	else {
    	repo.save(a);
    	m.addAttribute("result",a);
    	}
    	return "result";
    }
    
    @RequestMapping("deleteAlien")
    public String deleteAlien(@RequestParam("aid") int id,Model m) {
    	Optional<Alien> a = repo.findById(id);
    	if(a.isPresent()) {
    	repo.deleteById(id);
    	m.addAttribute("result", "Record deleted with id: "+id);
    	}
    	else {
    	m.addAttribute("result", "Record not found with id: "+id);
    	}
    	return "result";
    }
    
    
    @RequestMapping("updateAlien")
    public String updateAlien(@ModelAttribute Alien a,Model m) {
    	Optional<Alien> a1 = repo.findById(a.getAid());
    	if(a1.isPresent()) {
    	 repo.save(a);
    	 m.addAttribute("result","Record Updated!");
    	}
    	else {
    		m.addAttribute("result", "Record Not found with id: " + a.getAid());
    	}
    	return "result";
    }
    
    
    
    @RequestMapping("getAlien")
    public String getAlien(@RequestParam("aid") int id,Model m) {
    	Optional<Alien> a1 = repo.findById(id);
    	if(a1.isPresent()) {
    	m.addAttribute("result",a1);
    	}
    	else {
    		m.addAttribute("result","Record not found with id: " + id);
    	}
    	return "result";
    }
    
    @RequestMapping("getAlienByName")
    public String getAlienByName(@RequestParam("aname") String name,Model m) {
    	List<Alien> totalAliens = repo.findByAname(name);
    	
    	if(!totalAliens.isEmpty()) {
    	m.addAttribute("result",totalAliens);
    	}
    	else {
    		m.addAttribute("result","Records not found with this name: " + name);
    	}
    	return "result";
    }
    
    @RequestMapping("getAliens")
    public String getAliens(Model m) {
    	m.addAttribute("result",repo.findAll());
    	return "result";
    }
    
    
}
