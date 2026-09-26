package br.edu.unifio.ecommerce.repositorios;

import br.edu.unifio.ecommerce.entidades.ItemPedido;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class ItemPedidoRepositorioTests {

    @Autowired
    private ItemPedidoRepositorio itemPedidoRepositorio;

    @Test
    public void deveBuscarUmItemPedidoPorId() {
        // Busca o item de pedido de ID 1
        ItemPedido itemPedido = itemPedidoRepositorio.findById(1)
                .orElseThrow(() -> new AssertionError("ItemPedido com ID 1 não foi encontrado"));

        // Validação de atributos e relacionamentos (Pedido e Produto)
        assertNotNull(itemPedido);
        assertEquals(1, itemPedido.getQuantidade());
        assertEquals(1500.00, itemPedido.getValorUnitario());
        assertNotNull(itemPedido.getProduto());
        assertEquals("Smartphone", itemPedido.getProduto().getNome());
    }

    @Test
    public void deveListarTodosOsItensPedido() {
        List<ItemPedido> itens = itemPedidoRepositorio.findAll();

        assertNotNull(itens);
        assertFalse(itens.isEmpty());
        assertEquals(5, itens.size()); // 5 itens cadastrados no import.sql
    }
}