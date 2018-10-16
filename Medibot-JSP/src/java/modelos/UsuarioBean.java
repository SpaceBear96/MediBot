package modelos;
public class UsuarioBean {
    private int codigo;
    private String usuario;
    private String email;

    public UsuarioBean(int codigo, String usuario, String email) {
        this.codigo = codigo;
        this.usuario = usuario;
        this.email = email;
    }

    public UsuarioBean() {
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}
