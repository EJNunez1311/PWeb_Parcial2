package servicios;

import Clases.LikesArticulo;

public class ServiciosLikesArticulos extends MetodosDB<LikesArticulo>{

    private static ServiciosLikesArticulos instancia;

    private ServiciosLikesArticulos(){super(LikesArticulo.class);}

    public static ServiciosLikesArticulos getInstancia(){
        if(instancia==null){
            instancia = new ServiciosLikesArticulos();
        }
        return instancia;
    }
}