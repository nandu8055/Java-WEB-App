package com.in28minutes.myfirstwebapp.todo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class TodoController {
	
	private TodoService todoService;
	
	
	
	public TodoController(TodoService todoService) {
		super();
		this.todoService = todoService;
	}



	@RequestMapping("list-todo")
	public String listAllTodos(ModelMap model) {
		List<Todo> todos=todoService.FindByUsername("vinchenzo");
		model.addAttribute("todos", todos);
		return "listtodos";
	}
	
	@RequestMapping(value="add-todo",method=RequestMethod.GET)
	public String showNewTodo() {
		return "todo";
	}
	
	@RequestMapping(value="add-todo",method=RequestMethod.POST)
	public String addNewTodo(@RequestParam String description,ModelMap model) {
		String username=(String)model.get("name");
		todoService.AddTodo(username, description, LocalDate.now().plusYears(1), false);
		return "redirect:list-todo";
	}
	
}
