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
	//	employee = repo.findAll(Sort.by("id"));
		employee = repo.findAll();
		model.addAttribute("employee", employee);
		
		return "home";		
	}
	
	@PostMapping("/retirement-info")
	public String retirementInfo(
			@RequestParam Long id,
			Model model) {
/*	Option 1 : 		
			Employee employeeinfo = repo.findById(id).get();
			System.out.println(employeeinfo);
			String display;
			if (employeeinfo.getAge() >= 65) {
				display = "Congratulations on your retirement! "
						+ "		 You're entitled to $ " + ( (employeeinfo.getSalary() * 60)/100)  + "  in benefits! "; 
			} else  {
				display = " Keep going! You're " + (65 - employeeinfo.getAge()) + " years away from retirement! ";
			}
			model.addAttribute("message", display);
*/			
// Option 2 : 
		
		Employee employee = repo.findById(id).orElse(null);
		model.addAttribute("employee", employee);
		
		if (employee == null) {
			model.addAttribute("message", "Employee not found.");
		
		} else if (employee.getAge() >= 65) {
			int benefits = (int) Math.round(employee.getSalary() * .6);
			model.addAttribute("message", "Congratulations on your retirement! You're entitled to $" + benefits + " in benefits!");
		
		} else {
			int yearsLeft = 65 - employee.getAge();
			model.addAttribute("message", "Keep going! You're " + yearsLeft + " years away from retirement!");
		}	
						
		return "retirement-info";	
	}
		
	
	
	
}
