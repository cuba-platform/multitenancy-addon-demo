package com.haulmont.sdbmtsample.entity.system;

import javax.persistence.*;

import com.haulmont.addon.sdbmt.core.TenantId;
import com.haulmont.addon.sdbmt.entity.HasTenant;
import com.haulmont.addon.sdbmt.entity.HasTenantInstance;
import com.haulmont.addon.sdbmt.entity.Tenant;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.cuba.security.entity.Group;

@Extends(Group.class)
@DiscriminatorValue("EXT")
@Entity(name = "sdbmtsample$ExtGroup")
public class ExtGroup extends Group implements HasTenant, HasTenantInstance {
    private static final long serialVersionUID = 5896941079669582519L;

    @TenantId
    @Column(name = "TENANT_ID")
    protected String tenantId;

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "group")
    protected Tenant tenant;

    @Override
    public void setTenant(Tenant tenant) {
        this.tenant = tenant;
    }

    @Override
    public Tenant getTenant() {
        return tenant;
    }

    @Override
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }

    @Override
    public String getTenantId() {
        return tenantId;
    }
}