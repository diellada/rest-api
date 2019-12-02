package io.nology.allotment.restapi.dao;

import io.nology.allotment.restapi.entity.Project;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository

public class ProjectRepository implements ProjectDAO {
    private EntityManager entityManager;
    @Autowired
    public ProjectRepository(EntityManager entityManager){
        this.entityManager = entityManager;
    }

    @Override
    public List<Project> findAll(){
        return entityManager
                .unwrap(Session.class)
                .createQuery("from Project ", Project.class)
                .list();
    }
}
