package io.nology.allotment.restapi.service;

import io.nology.allotment.restapi.entity.Project;

import java.util.List;

public interface ProjectService {
    public List<Project> findAll();
}
