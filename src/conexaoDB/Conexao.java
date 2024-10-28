package conexaoDB;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;

/**
 *
 * @author AQUI TEM
 */
public class Conexao {

    private Connection connection;
    private Statement stmt;
    private ResultSet rs;

    private String url = "jdbc:mysql://localhost:3306/CSRS1"; // nome do banco de dados
    private String user = "root"; // usuario
    private String password = "#SENAC986525"; //senha do MySQL

    public boolean conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  // Carrega o driver MySQL
            connection = DriverManager.getConnection(url, user, password); // Estabelece a conexão
            System.out.println("Conexão realizada com sucesso");

            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM cliente");
            if (rs.next()) {
                System.out.println("Clientes cadastrados: " + rs.getInt(1));
            }
            return true;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Falha na conexão: " + ex.getMessage());
            return false;
        }finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
    } catch (SQLException ex) {
                System.out.println("Erro ao fechar recursos: " + ex.getMessage());
            }
        }
    }
    
    public Connection getConnection(){
        return connection;
    }
    
    public void desconectar(){
        if(connection != null){
            try {
                connection.close();
                System.out.println("Conexão fechada com sucesso.");
            }catch(SQLException ex){
                System.out.println("Erro ao fechar a conexão: "+ ex.getMessage());
            }
        }
    }
}
