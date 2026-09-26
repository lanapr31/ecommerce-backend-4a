package br.edu.unifio.ecommerce.repositorios;

import br.edu.unifio.ecommerce.entidades.Cliente;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class ClienteRepositorioTests {

    @Autowired
    private ClienteRepositorio clienteRepositorio;

    @Test
    public void deveBuscarUmClientePorId() {
        // Busca o ID 1 (João Silva)
        Cliente cliente = clienteRepositorio.findById(1)
                .orElseThrow(() -> new AssertionError("Cliente com ID 1 não foi encontrado"));

        // Validações de dois atributos
        assertNotNull(cliente);
        assertEquals("João Silva", cliente.getNome());
        assertEquals("joao@email.com", cliente.getEmail());
    }

    @Test
    public void deveListarTodosOsClientes() {
        List<Cliente> clientes = clienteRepositorio.findAll();

        assertNotNull(clientes);
        assertFalse(clientes.isEmpty());
        assertEquals(5, clientes.size()); // Há 5 clientes no import.sql
    }
}