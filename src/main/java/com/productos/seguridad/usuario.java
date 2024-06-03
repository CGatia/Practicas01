package com.productos.seguridad;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.*;

public class usuario {

	private int id;
	private int perfil;
	private int estado_civil;
	private String cedula;
	private String nombre;
	private String correo;
	private String clave;
	private String telefono;

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public int getPerfil() 
	{
		return perfil;
	}

	public void setPerfil(int perfil) 
	{
		this.perfil = perfil;
	}

	public int getEstado_civil() 
	{
		return estado_civil;
	}

	public void setEstado_civil(int estado_civil) 
	{
		this.estado_civil = estado_civil;
	}

	public String getCedula() 
	{
		return cedula;
	}

	public void setCedula(String cedula) 
	{
		this.cedula = cedula;
	}

	public String getNombre() 
	{
		return nombre;
	}

	public void setNombre(String nombre) 
	{
		this.nombre = nombre;
	}

	public String getCorreo() 
	{
		return correo;
	}

	public void setCorreo(String correo) 
	{
		this.correo = correo;
	}

	public String getClave() 
	{
		return clave;
	}

	public void setClave(String clave) 
	{
		this.clave = clave;
	}


	public String ingresarCliente()
	{
		String result="";

		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuario (id_us, id_per, id_est, nombre_us,"
				+ "cedula_us,correo_us,clave_us) "
				+ "VALUES(?,?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,this.getId());
			pr.setInt(2,2);
			pr.setInt(3, this.getEstado_civil());
			pr.setString(4, this.getNombre());
			pr.setString(5, this.getCedula());
			pr.setString(6, this.getCorreo());
			pr.setString(7, this.getClave());

			if(pr.executeUpdate()==1)
			{
				result="Insercion correcta";
			}
			else
			{
				result="Error en insercion";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
			System.out.print(result);
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result; 
	}


	//modificar este método
	public String getUsuarios()
	{
		String sql="SELECT COUNT(*) FROM tb_usuario";
		ResultSet rs=null;
		Conexion con=new Conexion();
		String usuarios="";
		try
		{
			rs=con.Consulta(sql);
			while(rs.next())
			{
				usuarios=String.valueOf(rs.getInt(1));
			}
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return usuarios;
	}
	public boolean verificarUsuario(String nlogin, String nclave)
	{
		boolean respuesta=false;
		String sentencia= "Select * from tb_usuario where correo_us='"+nlogin+
				"' and clave_us='"+nclave+"';";
		//System.out.print(Sentence);
		try
		{
			ResultSet rs;
			Conexion clsCon=new Conexion();
			rs=clsCon.Consulta(sentencia);
			if(rs.next())
			{
				respuesta=true;
				this.setCorreo(nlogin);
				this.setClave(nclave);
				this.setPerfil(rs.getInt(2));
				this.setNombre(rs.getString(3));
			}
			else
			{
				respuesta=false;
				rs.close();
			}
		}
		catch(Exception ex)
		{
			System.out.println( ex.getMessage());
		}
		return respuesta;
	}



}
