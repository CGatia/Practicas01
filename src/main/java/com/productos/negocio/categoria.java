package com.productos.negocio;

import java.sql.*;
import com.productos.datos.Conexion;

public class categoria {
	
	public String mostrarCategoria()
	{
		String combo="<select name=\"cmbCategoria\" required oninvalid=\"this.setCustomValidity('No hay categorías ingresadas')\">";
		String sql="SELECT * FROM tb_categoria";
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
			rs=con.Consulta(sql);
			while(rs.next())
			{
				combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
			}
			combo+="</select>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return combo;
	}
	
	public String mostrarCategoria2()
	{
		String combo="<select name=\"cmbCategoria\" class='input_izq' required oninvalid=\"this.setCustomValidity('No hay categorías ingresadas')\">";
		String sql="SELECT * FROM tb_categoria";
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
			rs=con.Consulta(sql);
			while(rs.next())
			{
				combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
			}
			combo+="</select>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return combo;
	}
}

