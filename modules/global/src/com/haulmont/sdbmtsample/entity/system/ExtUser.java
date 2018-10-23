package com.haulmont.sdbmtsample.entity.system;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

import com.haulmont.addon.sdbmt.core.TenantId;
import com.haulmont.addon.sdbmt.entity.HasTenant;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.cuba.security.entity.User;

@Extends(User.class)
@DiscriminatorValue("EXT")
@Entity(name = "sdbmtsample$ExtUser")
@NamePattern("#getCaption|login,name,tenantId")
public class ExtUser extends User implements HasTenant {
    private static final long serialVersionUID = -2598354095282194816L;

    @TenantId
    @Column(name = "TENANT_ID")
    protected String tenantId;

    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }

    public String getTenantId() {
        return tenantId;
    }
}