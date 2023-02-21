package co.grandcircus.assessment6;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class employeeController {

	@Autowired
	private EmployeeRepository repo;
	
	
	@RequestMapping("/")
	public String home(Model model) {

		List<Employee> employee;
		employee = repo.findAll(Sort.by("id"));
		
		model.addAttribute("employee", employee);
		
		return "home";		
	}
	
	
	
	
	
}
