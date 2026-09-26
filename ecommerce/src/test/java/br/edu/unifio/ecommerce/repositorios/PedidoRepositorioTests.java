package br.edu.unifio.ecommerce.repositorios;

import br.edu.unifio.ecommerce.entidades.Pedido;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class PedidoRepositorioTests {

    @Autowired
    private PedidoRepositorio pedidoRepositorio;

    @Test
    public void deveBuscarUmPedidoPorId() {
        // Busca o pedido de ID 1
        Pedido pedido = pedidoRepositorio.findById(1)
                .orElseThrow(() -> new AssertionError("Pedido com ID 1 não foi encontrado"));

        // Validação dos atributos e do relacionamento com Cliente
        assertNotNull(pedido);
        assertEquals(1500.00, pedido.getValorTotal());
        assertNotNull(pedido.getCliente());
        assertEquals("João Silva", pedido.getCliente().getNome());
    }

    @Test
    public void deveListarTodosOsPedidos() {
        List<Pedido> pedidos = pedidoRepositorio.findAll();

        assertNotNull(pedidos);
        assertFalse(pedidos.isEmpty());
        assertEquals(5, pedidos.size()); // 5 pedidos cadastrados no import.sql
    }
}