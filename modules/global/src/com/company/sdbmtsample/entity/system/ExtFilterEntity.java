package com.company.sdbmtsample.entity.system;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.haulmont.addon.sdbmt.core.TenantId;
import com.haulmont.addon.sdbmt.entity.HasTenant;
import com.haulmont.addon.sdbmt.entity.StandardTenantEntity;
import com.haulmont.chile.core.annotations.MetaProperty;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.cuba.security.entity.FilterEntity;

@Extends(FilterEntity.class)
@Entity(name = "sdbmtsample$ExtFilterEntity")
@DiscriminatorValue("EXT")
public class ExtFilterEntity extends FilterEntity implements HasTenant {
    private static final long serialVersionUID = -4509406305471409311L;

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