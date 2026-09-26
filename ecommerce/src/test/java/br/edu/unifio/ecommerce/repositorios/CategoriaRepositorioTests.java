package br.edu.unifio.ecommerce.repositorios;

import br.edu.unifio.ecommerce.entidades.Categoria;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class CategoriaRepositorioTests {

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Test
    public void deveBuscarUmaCategoriaPorId() {
        // Busca o ID 1 (Eletrônicos)
        Categoria categoria = categoriaRepositorio.findById(1)
                .orElseThrow(() -> new AssertionError("Categoria com ID 1 não foi encontrada"));

        // Validações de múltiplos atributos
        assertNotNull(categoria);
        assertEquals((short) 1, categoria.getId());
        assertEquals("Eletrônicos", categoria.getNome());
    }

    @Test
    public void deveListarTodasAsCategorias() {
        List<Categoria> categorias = categoriaRepositorio.findAll();

        assertNotNull(categorias);
        assertFalse(categorias.isEmpty());
        assertEquals(5, categorias.size()); // Há exatamente 5 categorias no import.sql
    }
}