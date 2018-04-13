package com.company.sdbmtsample.entity.system;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.DiscriminatorValue;

import com.haulmont.addon.sdbmt.core.TenantId;
import com.haulmont.addon.sdbmt.entity.HasTenant;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.cuba.security.entity.Role;

@Extends(Role.class)
@DiscriminatorValue("EXT")
@Entity(name = "sdbmtsample$ExtRole")
public class ExtRole extends Role implements HasTenant {
    private static final long serialVersionUID = 8390488311477541425L;

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