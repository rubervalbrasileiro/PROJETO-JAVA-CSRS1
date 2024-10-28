package models;
import beans.Usuarios.*;
import java.util.ArrayList;
import java.util.List;

/**
 * CLASSE Destinada ao CRUD de dados ref. ao usuários
 *
 * @author Ruberval Brasileiro
 * @version 1.0 iniciada em 26/10/2024
 */
public class Usuario {

    private String usuario;
    private String senha;
    private static List<Usuario> usuarios = new ArrayList<>();
    
    public Usuario(){
        
    }
    
    public Usuario(String usuario, String senha){
        this.usuario = usuario;
        this.senha = senha;
    }

    public static void adicionarUsuario(Usuario usuario){
        usuarios.add(usuario);
    }
    
    public static void removerUsuario(String nome){
        usuarios.removeIf(u -> u.getUsuario().equalsIgnoreCase(nome));
    }
    
    public static void editarUsuario(String usuario, String novaSenha){
        for(Usuario u : usuarios){
            if(u.getUsuario().equalsIgnoreCase(usuario)){
                u.setSenha(novaSenha);
                break;
            }
        }
    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

}
