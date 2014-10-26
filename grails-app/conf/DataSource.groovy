dataSource {
	pooled = false
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = true
	cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
//environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3308/marketchase"
			username = "MarketChase"
			password = "2014"
		}
		hibernate {
			show_sql = true
		}
	}
	test {
		dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3308/marketchase"
			username = "MarketChase"
			password = "2014"
		}
	}
	production {
		dataSource {
			dbCreate = "create-drop"
			url = "jdbc:mysql://localhost:3308/marketchase"
			username = "MarketChase"
			password = "2014"
		}
	}
}
