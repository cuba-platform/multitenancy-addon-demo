package com.company.sdbmtsample.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.addon.sdbmt.entity.StandardTenantEntity;

@NamePattern("%s|name")
@Table(name = "SDBMTSAMPLE_STORE")
@Entity(name = "sdbmtsample$Store")
public class Store extends StandardTenantEntity {
    private static final long serialVersionUID = 4530286659914776459L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "ADDRESS")
    protected String address;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }


}