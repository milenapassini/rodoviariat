package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import connection.ConnectionFactory;
import model.bean.rodoviaria;

public class rodoviariaDAO {
	
	public void create(rodoviaria f) {
		Connection con= ConnectionFactory.getConnection();
		PreparedStatement stmt = null;
		
		try {
			stmt = con.prepareStatement("INSERT INTO rodoviaria  (nome, CPF, RG, Endereço, Email, Celular) VALUES(?,?,?,?,?,?)");
			stmt.setString(2, f.getnome());
			stmt.setString(3, f.CPF());
			stmt.setString(4, f.RG());
			stmt.setString(5, f.Endereço());
			stmt.setString(6, f.Email());
			stmt.setString(6, f.Celular());
			
			stmt.executeUpdate();
			JOptionPane.showInternalMessageDialog(null, "Salvo com sucesso");
		} catch(SQLException e) {
			JOptionPane.showInternalMessageDialog(null, "Erro ao salvar" + e);
		} finally {
			ConnectionFactory.closeConnection(con, stmt, null);
		}
	}
       public List<passageiro> read() {
		
		Connection con = connectionFactory.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<passageiro> passageiros = new ArrayList<>();
		
		try {
			stmt = con.prepareStatement("SELECT * FROM  passageiro");
			rs = stmt.executeQuery();
			while(rs.next()) {
				passageiro f = new passageiro();
				f.setId_passageiro(rs.getInt("id_passageiro"));
				f.setNome(rs.getString("nome"));
				f.setRg(rs.getString("rg"));
				f.setCpf(rs.getString("cpf"));
				f.setEndereo(rs.getString("endereo"));
				f.setEmail(rs.getString("email"));
				f.setTelefone(rs.getString("telefone"));
				passageiros.add(f);
			}
			
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Erro ao exibir as informaes do BD" + e);
			e.printStackTrace();
		}finally {
			connectionFactory.closeConnection(con, stmt, rs);
		}
		return passageiros;
	}
	
	public void delete(passageiro f) {
		
		Connection con = connectionFactory.getConnection();
		PreparedStatement stmt = null;
		
		try {
			stmt = con.prepareStatement("DELETE  FROM passageiro WHERE id_passageiro=?");
			stmt.setInt(1, f.getId_passageiro()); 
			stmt.executeUpdate();
			
			JOptionPane.showMessageDialog(null, "Passageiro excuido com sucesso!");
		}catch (SQLException e){
			
			JOptionPane.showMessageDialog(null, "Erro ao excluir: "+ e);
			
		}finally {
			
			connectionFactory.closeConnection(con, stmt);
			
		}
		
	}
	
	
	public passageiro read(int id) {
		Connection con = connectionFactory.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		passageiro f = new passageiro();
		
		try {
			stmt = con.prepareStatement("SELECT * FROM passageiro WHERE id_passageiro=? LIMIT 1;");
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			if(rs != null && rs.next()) {   
				f.setId_passageiro(rs.getInt("id_passageiro"));
				f.setNome(rs.getString("nome"));
				f.setRg(rs.getString("rg"));
				f.setCpf(rs.getString("cpf"));
				f.setEndereo(rs.getString("endereo"));
				f.setEmail(rs.getString("email"));
				f.setTelefone(rs.getString("telefone"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			connectionFactory.closeConnection(con, stmt, rs);
		}
		return f;
	}
	
	public void update(passageiro f) {
		Connection con = connectionFactory.getConnection(); 
		PreparedStatement stmt = null;
		
		try {
			stmt = con.prepareStatement("UPDATE passageiro SET nome=?, rg=?, cpf=?, endereo=?, email=?, telefone=? WHERE id_passageiro=?;");
			stmt.setString(1, f.getNome());
			stmt.setString(3, f.getRg());
			stmt.setString(4, f.getCpf());
			stmt.setString(5, f.getEndereo());
			stmt.setString(6, f.getEmail());
			stmt.setString(7, f.getTelefone());
			stmt.setInt(8, f.getId_passageiro());
			
			stmt.executeUpdate();
			JOptionPane.showMessageDialog(null, "Alterado com sucesso!");
		}catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Erro ao alterar" + e);
		} finally {
			connectionFactory.closeConnection(con, stmt);
		}
	}
		
}


	
}
