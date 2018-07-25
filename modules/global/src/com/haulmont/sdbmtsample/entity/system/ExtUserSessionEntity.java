package com.haulmont.sdbmtsample.entity.system;

import com.haulmont.addon.sdbmt.core.TenantId;
import com.haulmont.addon.sdbmt.entity.HasTenant;
import com.haulmont.chile.core.annotations.MetaClass;
import com.haulmont.chile.core.annotations.MetaProperty;
import com.haulmont.cuba.core.entity.annotation.Extends;
import com.haulmont.cuba.security.entity.UserSessionEntity;

@Extends(UserSessionEntity.class)
@MetaClass(name = "sdbmtsample$ExtUserSessionEntity")
public class ExtUserSessionEntity extends UserSessionEntity implements HasTenant {
    private static final long serialVersionUID = 3586071784104335837L;

    @TenantId
    @MetaProperty
    protected String tenantId;

    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }

    public String getTenantId() {
        return tenantId;
    }
}