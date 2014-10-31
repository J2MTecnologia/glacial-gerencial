dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
    url = "jdbc:mysql://localhost/AppMembers"
    username = "root"
    password = "root"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
 development{
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:mysql://localhost/AppMembers"
            username = "root"
            password = "root"
        }
    }
    test{
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/AppMembers"
            username = "root"
            password = "root"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/AppMembers?autoReconnect=true"
            username = "root"
            password = "MY5Q10R10N"
            properties {
              // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
              //jmxEnabled = true
             
              initialSize = 5
              maxActive = 50
              minIdle = 5
              maxIdle = 25
              maxWait = 10000
              maxAge = 1000 * 60 * 30
              timeBetweenEvictionRunsMillis = 1000 * 60 * 30
              minEvictableIdleTimeMillis = 1000 * 60 * 30
              validationQuery = "SELECT 1"
              validationQueryTimeout = 3
              validationInterval = 15000
              testOnBorrow = true
              testWhileIdle = true
              testOnReturn = true
            }
        }
    }
}
