package br.edu.unifio.ecommerce.repositorios;

import br.edu.unifio.ecommerce.entidades.Produto;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class ProdutoRepositorioTests {

    @Autowired
    private ProdutoRepositorio produtoRepositorio;

    @Test
    public void deveBuscarUmProdutoPorId() {
        // Busca o produto de ID 1 (Smartphone)
        Produto produto = produtoRepositorio.findById(1)
                .orElseThrow(() -> new AssertionError("Produto com ID 1 não foi encontrado"));

        // Validação de atributos e relacionamento
        assertNotNull(produto);
        assertEquals("Smartphone", produto.getNome());
        assertEquals(1500.00, produto.getPreco());
        assertNotNull(produto.getCategoria());
        assertEquals("Eletrônicos", produto.getCategoria().getNome());
    }

    @Test
    public void deveListarTodosOsProdutos() {
        List<Produto> produtos = produtoRepositorio.findAll();

        assertNotNull(produtos);
        assertFalse(produtos.isEmpty());
        assertEquals(5, produtos.size()); // 5 produtos cadastrados no import.sql
    }
}