package pe.edu.tecsup.jfabiant.pokedex.pokeapi;

import retrofit2.Call;
import pe.edu.tecsup.jfabiant.pokedex.models.PokemonRespuesta;
import retrofit2.http.GET;
import retrofit2.http.Query;

public interface PokeapiService {

    @GET("pokemon")
    Call<PokemonRespuesta> obtenerListaPokemon(@Query("limit") int limit, @Query("offset") int offset);

}
