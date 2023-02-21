package co.grandcircus.assessment6;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@PostMapping("/retirement-info")
	public String retirementInfo(
			@RequestParam Long id,
			Model model) {
			
			Employee employeeinfo = repo.findById(id).get();
		 
			String display;
			
			System.out.println(employeeinfo);
			
						
			if (employeeinfo.getAge() >= 65) {
				
				display = "Congratulations on your retirement! "
						+ "		 You're entitled to $ " + ( (employeeinfo.getSalary() * 60)/100)  + "  in benefits! "; 
			} else  {
				
				display = " Keep going! You're " + (65 - employeeinfo.getAge()) + " years away from retirement! ";
			}
			
			model.addAttribute("message", display);
			
		return "retirement-info";	
	}
		
	
	
	
}
