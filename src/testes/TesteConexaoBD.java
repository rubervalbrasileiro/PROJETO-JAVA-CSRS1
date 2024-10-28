
package testes;
import conexaoDB.Conexao;
/**
 *
 * @author AQUI TEM
 */
public class TesteConexaoBD {
    public static void main(String[] args){
        Conexao conexao = new conexaoDB.Conexao();
        if(conexao.conectar()){
            //System.out.println("Conexão realidada com sucesso! ");
            
            conexao.desconectar();
        }else{
            //System.out.println("Falha ao conectar ao banco");
        }
    }
}
