package com.ram.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.UriInfo;

import com.ram.beans.ResponseBean;

@Path("/v1")
public class HelloWorldResource {
	
	@Context UriInfo uriInfo;
	
	@Context Request request;	    
	
	@GET
	@Path("/text")
	@Produces(MediaType.APPLICATION_JSON)
	public String getMessage() {
		return "Hello World..Ram";
	}
	
	@GET
	@Path("/json")
	@Produces(MediaType.APPLICATION_JSON)
	public ResponseBean getMessage1() {
		
		ResponseBean responseBean = new ResponseBean();
		responseBean.setAge(33);
		responseBean.setName("Ram Mittala");
		return responseBean;
	}
	
}
