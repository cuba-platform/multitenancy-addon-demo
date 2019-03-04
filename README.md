# Single DB Multitenancy Sample

This sample application demonstrates the usage of a single database [multi-tenancy component](https://github.com/cuba-platform/multitenancy-addon) for CUBA platform.


## Data Model and Sample Data
This application contains tenant-specific entity `Store` and some system entities that were made tenant-specific: users, security subsystem (groups, roles), filters, user sessions.

This application also contains sample data: two tenants, tenant admins, a tenant user, an access group hierarchy, a tenant-specific security role, application data (created by tenant users), a tenant-specific filter.

Each tenant was given its own admin that is able to create users, set up roles, permissions, and access groups.

The following users are created:

| login     | password    | description |
| --------|---------|-------|
| admin  | admin   | Global admin. Has access to everything in the system without restrictions. Can view tenant-specific data as well    |
| walmart_admin | admin | Admin of the first tenant. Has access to administration menu, but doesn't have access to some low-level functionality, such as server log, JMX console etc. Can only view data of the same tenant    |
| walmart_user | admin | User of the first tenant, created by *walmart_admin*. Access is restricted even further by *walmart_admin* with a tenant-specific role    |
| costco_admin | admin | Admin of the second tenant   |


Tenants created by a global admin:

![Tenants](/img/tenants.png)


Users visible to global admin:

![Users, visible to global admin](/img/users_1.png)

Tenant users created by and visible to tenant admin:

![Tenant users, visible to tenant admin](/img/users_2.png)

The application shows creating an access groups hierarchy: different tenants having an ability to set up their own access groups:

![Security groups hierarchy, visible to respective admins](/img/groups_all.png)

Tenant-specific application data (Stores), accessible to respective users (the second screen also shows a filter created by a tenant user):

![Application data, visible to respective admins](/img/stores_all.png)

Note that global admin can see which tenant the records belong to (the first column).


Tenant admins are able to view user sessions from the administration menu. The list of user sessions is limited to their own users.

## Technical Details

Entity `Store` is created like normal persistent entity, but extended from `StandardTenantEntity`, instead of `StandardEntity`:

```
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
```

Another way of making a tenant-specific entity is to implement `HasTenant` interface manually.
This can be useful if an entity is system-level, or it doesn't need all of the attributes of `StandardEntity`.

System level entities in the application are made tenant-specific using this method:

```
@Extends(User.class)
@DiscriminatorValue("EXT")
@Entity(name = "sdbmtsample$ExtUser")
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
```

Annotation `@TenantId` on the `tenantId` attribute is used by the application component to specify precisely which attribute tenants should not see anywhere in the system (including UI).
