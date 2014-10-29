package marketchase

import sun.management.jmxremote.ConnectorBootstrap.DefaultValues;
import liquibase.executor.jvm.SqlTypeValue;

class Anuncio {

	String descricao
	String foto
	Date dataInicio
	Date dataVencimento
	boolean ativo
	
    static constraints = {
		foto nullable:false,blank:false
    }
	
	static mapping = {
		version false
		dataInicio type:"date"
		dataVencimento type:"date"
		ativo DefaultValue: true
	}
	
}
