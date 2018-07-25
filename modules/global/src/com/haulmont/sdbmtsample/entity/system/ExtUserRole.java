package com.haulmont.sdbmtsample.entity.system;

import com.haulmont.addon.sdbmt.core.TenantId;
import com.haulmont.addon.sdbmt.entity.HasTenant;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.cuba.security.entity.UserRole;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Extends(UserRole.class)
@DiscriminatorValue("EXT")
@Entity(name = "sdbmtsample$ExtUserRole")
public class ExtUserRole extends UserRole implements HasTenant {
    private static final long serialVersionUID = -3685131016689459387L;

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