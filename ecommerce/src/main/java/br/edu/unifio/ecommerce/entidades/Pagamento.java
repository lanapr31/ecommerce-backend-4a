package br.edu.unifio.ecommerce.entidades;

import jakarta.persistence.*;
import lombok.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "tb_pagamento")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(of = "id")
public class Pagamento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private BigDecimal valor;
    private LocalDateTime data;
    private String status;
    private String tipo;

    @OneToOne
    @JoinColumn(name = "pedido_id")
    private Pedido pedido;
}