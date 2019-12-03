package io.nology.allotment.restapi.rest;

import io.nology.allotment.restapi.entity.Project;
import io.nology.allotment.restapi.exceptions.ResourceNotFoundException;
import io.nology.allotment.restapi.service.ProjectService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping ("/api")

public class ProjectController {
    private List<String> projects;
    private ProjectService theProjectService;

    public ProjectController( ProjectService theProjectService){
        this.theProjectService = theProjectService;
    }

    //INDEX ROUTE
    @GetMapping("/projects")
    public ResponseEntity<List<Project>> findAll(){
        List<Project> projects = theProjectService.findAll();
        return ResponseEntity.status(HttpStatus.OK).body(projects);
    }

    // SHOW ROUTE
    @GetMapping("/projects/{projectId}")
    public ResponseEntity<Project> getProject(@PathVariable int projectId) {
        Project theProject = theProjectService.findById(projectId);
        if (theProject == null) throw new ResourceNotFoundException("Project not found with id: " +projectId);
        return ResponseEntity.status(HttpStatus.OK).body(theProject);
    }
}
