package io.nology.allotment.restapi.service;

import io.nology.allotment.restapi.dao.ProjectDAO;
import io.nology.allotment.restapi.entity.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService{
    private ProjectDAO theProjectDAO;

    @Autowired
    public ProjectServiceImpl(ProjectDAO theProjectDAO) {
        this.theProjectDAO = theProjectDAO;
    }

    @Override
    @Transactional
    public List<Project> findAll(){
        return theProjectDAO.findAll();
    }

    @Override
    @Transactional
    public Project findById(int projectId) {
        return theProjectDAO.findById(projectId);
    };

    @Override
    @Transactional
    public List<Project> searchProjects(String searchTerm) { return theProjectDAO.searchProjects(searchTerm);}
}
