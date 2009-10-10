dataSource {
	pooled = true
//	driverClassName = "org.hsqldb.jdbcDriver"
//    username = "sa"
//	password = ""

	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = "password"


}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
//			url = "jdbc:hsqldb:mem:devDB"
			url = "jdbc:mysql://localhost:3306/tracker"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDb"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:file:prodDb;shutdown=true"
		}
	}
}