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
    public void deveBuscarUmClientePorId () {
      Cliente cliente = clienteRepositorio.findById(Short.parseShort("1")).orElseThrow();

      assertNotNull(cliente);

      assertEquals("João Silva", cliente.getNome());
      assertEquals("joao@email.com", cliente.getEmail());
    }
      @Test 
      public void deveListarTodosOsClientes() {
        List<Cliente> clientes = clienteRepositorio.findAll();

        assertNotNull(clientes);
        assertFalse(clientes.isEmpty());

      }



    }


