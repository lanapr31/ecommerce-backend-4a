package br.edu.unifio.ecommerce.repositorios;

import br.edu.unifio.ecommerce.entidades.Pagamento;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@DataJpaTest
public class PagamentoRepositorioTests {


    @Autowired
    private PagamentoRepositorio pagamentoRepositorio;

    @Test
    @DisplayName("Deve buscar um pagamento por ID")
    public void deveBuscarUmPagamentoPorId() {
        Pagamento pagamento = pagamentoRepositorio.findById(1).orElseThrow();
    
        assertNotNull(pagamento);
        assertEquals(new BigDecimal("1500.00"), pagamento.getValor());
        assertEquals(LocalDateTime.parse("2026-09-01T10:05:00"), pagamento.getData());
        assertEquals("PENDENTE", pagamento.getStatus());
        assertEquals("PIX", pagamento.getTipo());
        assertNotNull(pagamento.getPedido());
    }
}

