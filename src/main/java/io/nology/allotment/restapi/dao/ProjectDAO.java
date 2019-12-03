package io.nology.allotment.restapi.dao;

import io.nology.allotment.restapi.entity.Project;

import java.util.List;

public interface ProjectDAO {
    public List<Project> findAll();
    public Project findById(int projectId);
    public List<Project> searchProjects(String searchTerm);
}
