package com.in28minutes.myfirstwebapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
@Service
public class TodoService {
	
	private static List<Todo> todos=new ArrayList<>();
	private static int count=0;
	static {
		todos.add(new Todo(++count,"vinchenzo","AWS azure",LocalDate.now().plusMonths(3),false));
		todos.add(new Todo(++count,"vinchenzo","devops",LocalDate.now().plusMonths(6),false));
		todos.add(new Todo(++count,"vinchenzo","fullstack",LocalDate.now().plusMonths(9),false));
	}
	
	public List<Todo> FindByUsername(String username){
		return todos;
	}
	public void AddTodo(String username,String description, LocalDate date,boolean done) {
		todos.add(new Todo(++count,username,description,date,done));
	}
	
}
