
package models;

/**@CLASSE Destinada ao CRUD de dados ref. ao cliente
 *
 * @author Ruberval Brasileiro
 * @version 1.0 iniciada em 26/10/2024
 */
public class Cliente {
    private int id_cliente, cod_Cliente, id_endereco;
    private String status_Cliente, nome_Cliente, apelido_Cliente, celular, Whatsapp, data_Nasc, estado_Civil, nome_Mae, nome_Pai;
    private String cpf_Cliente, RG_Cliente, cartao_Sus, titulo_Eleitoral, secao_Eleitoral, zona_Eleitoral, data_Cadastro, Obs;

    public Cliente() {
    }

    
    
    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getCod_Cliente() {
        return cod_Cliente;
    }

    public void setCod_Cliente(int cod_Cliente) {
        this.cod_Cliente = cod_Cliente;
    }

    public int getId_endereco() {
        return id_endereco;
    }

    public void setId_endereco(int id_endereco) {
        this.id_endereco = id_endereco;
    }

    public String getStatus_Cliente() {
        return status_Cliente;
    }

    public void setStatus_Cliente(String status_Cliente) {
        this.status_Cliente = status_Cliente;
    }

    public String getNome_Cliente() {
        return nome_Cliente;
    }

    public void setNome_Cliente(String nome_Cliente) {
        this.nome_Cliente = nome_Cliente;
    }

    public String getApelido_Cliente() {
        return apelido_Cliente;
    }

    public void setApelido_Cliente(String apelido_Cliente) {
        this.apelido_Cliente = apelido_Cliente;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getWhatsapp() {
        return Whatsapp;
    }

    public void setWhatsapp(String Whatsapp) {
        this.Whatsapp = Whatsapp;
    }

    public String getData_Nasc() {
        return data_Nasc;
    }

    public void setData_Nasc(String data_Nasc) {
        this.data_Nasc = data_Nasc;
    }

    public String getEstado_Civil() {
        return estado_Civil;
    }

    public void setEstado_Civil(String estado_Civil) {
        this.estado_Civil = estado_Civil;
    }

    public String getNome_Mae() {
        return nome_Mae;
    }

    public void setNome_Mae(String nome_Mae) {
        this.nome_Mae = nome_Mae;
    }

    public String getNome_Pai() {
        return nome_Pai;
    }

    public void setNome_Pai(String nome_Pai) {
        this.nome_Pai = nome_Pai;
    }

    public String getCpf_Cliente() {
        return cpf_Cliente;
    }

    public void setCpf_Cliente(String cpf_Cliente) {
        this.cpf_Cliente = cpf_Cliente;
    }

    public String getRG_Cliente() {
        return RG_Cliente;
    }

    public void setRG_Cliente(String RG_Cliente) {
        this.RG_Cliente = RG_Cliente;
    }

    public String getCartao_Sus() {
        return cartao_Sus;
    }

    public void setCartao_Sus(String cartao_Sus) {
        this.cartao_Sus = cartao_Sus;
    }

    public String getTitulo_Eleitoral() {
        return titulo_Eleitoral;
    }

    public void setTitulo_Eleitoral(String titulo_Eleitoral) {
        this.titulo_Eleitoral = titulo_Eleitoral;
    }

    public String getSecao_Eleitoral() {
        return secao_Eleitoral;
    }

    public void setSecao_Eleitoral(String secao_Eleitoral) {
        this.secao_Eleitoral = secao_Eleitoral;
    }

    public String getZona_Eleitoral() {
        return zona_Eleitoral;
    }

    public void setZona_Eleitoral(String zona_Eleitoral) {
        this.zona_Eleitoral = zona_Eleitoral;
    }

    public String getData_Cadastro() {
        return data_Cadastro;
    }

    public void setData_Cadastro(String data_Cadastro) {
        this.data_Cadastro = data_Cadastro;
    }

    public String getObs() {
        return Obs;
    }

    public void setObs(String Obs) {
        this.Obs = Obs;
    }

    
}
