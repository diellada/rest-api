package io.nology.allotment.restapi.entity;

import javax.persistence.*;

@Entity
@Table
public class Project {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "environment")
    private String environment;

    @Column(name="bitbucket_url")
    private String bitBucketURL;

}
