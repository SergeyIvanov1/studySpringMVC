package com.sergeyivanov.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class MyController {

    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping("/fillForm")
    public String fillFormMethod(Model model){

//        if create object here and pass link to the parameter, it's fields reflects in form
//        Employee employee = new Employee();
//        employee.setName("Ivan");
//        employee.setSurname("Ivanov");
//        employee.setSalary(500);

        model.addAttribute("employee", new Employee());

        return "fillingClassEmployeeInsideForm";
    }

    @RequestMapping("showForm")
//    here we ara binding attribute with parameter emp
    public String showDetailsFromForm(@Valid @ModelAttribute("employee") Employee emp,
                                      BindingResult bindingResult){
// warn: parameter bindingResult must be after @ModelAttribute
//        bindingResult consist result of validation

        // if result validating is not successful
        if (bindingResult.hasErrors()) {
            return "fillingClassEmployeeInsideForm";
        } else {
            return "showDetailsFromForm";
        }


//        here we can change fields of emp
//        String name = emp.getName();
//        emp.setName("Mr." + name);
//
//        String surname = emp.getSurname();
//        emp.setSurname(surname + "!");
//
//        int salary = emp.getSalary();
//        emp.setSalary(salary * 2);

//        return "showDetailsFromForm";
    }

    @RequestMapping("/ttt")
    public String showTttt(){
        return "tttt";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(){
        return "ask-emp-details-view";
    }

//    @RequestMapping("showDetails")
//    public String showEmpDetails(){
//        return "show-emp-details-view";
//    }

//    @RequestMapping("showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//        String empName = request.getParameter("employeeName");
//        empName = "Mr." + empName;
//
//        model.addAttribute("empAttribute", empName);
//        model.addAttribute("description", " - java developer");
//
//        return "show-emp-details-view";
//    }

    @RequestMapping("showDetails")
    public String showEmpDetails(@RequestParam("employeeName")String empName, Model model){
        empName = "Mr." + empName;

        model.addAttribute("empAttribute", empName);
        model.addAttribute("description", " - java developer");

        return "show-emp-details-view";
    }
}
